cask "glasspen-meet" do
  version "1.0"
  sha256 "022a52313313335380604b7c4d1bb87bdcea7f112a08dcbdba5e86ea1a2cd076"

  url "https://github.com/toncatalansuazo/glass-meet-pen/releases/download/v1.0.0/Glasspen-Meet-#{version}-macOS.zip"
  name "Glasspen Meet"
  desc "Annotate your screen while sharing it, also from a phone or tablet"
  homepage "https://github.com/toncatalansuazo/glass-meet-pen"

  depends_on macos: :sonoma

  app "Glasspen Meet.app"

  uninstall quit: "io.paintscreen.ScreenBrush"

  zap trash: "~/Library/Preferences/io.paintscreen.ScreenBrush.plist"

  caveats <<~EOS
    Glasspen Meet is not notarized by Apple yet. The first time you open it, macOS
    says it can't verify the developer: open System Settings → Privacy & Security
    and click "Open Anyway".
  EOS
end
