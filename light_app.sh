#!/bin/sh

path=$@/contents/info.plist
bundleIdentifier=$(/usr/libexec/PlistBuddy -c "Print CFBundleIdentifier" "$path")
defaults write $bundleIdentifier NSRequiresAquaSystemAppearance -bool YES
echo '😀light mode succeed~,Restart the app'