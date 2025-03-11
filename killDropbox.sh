#!/bin/bash

# Stop Dropbox if it's running
osascript -e 'quit app "Dropbox"'

# Remove Dropbox application
rm -rf /Applications/Dropbox.app

# Remove Dropbox folder from Home directory (this is optional)
rm -rf ~/Dropbox

# Remove Dropbox configuration and support files
rm -rf ~/Library/Application\ Support/Dropbox
rm -rf ~/Library/Caches/com.dropbox.dropbox
rm -rf ~/Library/Preferences/com.dropbox.dropbox.plist
rm -rf ~/Library/Logs/Dropbox

# Remove system-wide Dropbox files (admin privileges required)
sudo rm -rf /Library/Application\ Support/Dropbox
sudo rm -rf /Library/Preferences/com.dropbox.dropbox.plist
sudo rm -rf /Library/Logs/Dropbox

echo "Dropbox has been successfully removed from your system."
