local get_os_name = require("utils.get_os_name")

local launch_menu = {}

if get_os_name.get_os_name() == "Windows" then
   launch_menu = {
      -- { label = "Ubuntu", args = { "wsl", "-d", "Ubuntu" }, domain = { DomainName = "ubuntu" } },
      {
         label = "PowerShell",
         args = { "powershell.exe", "-nologo" },
      },
      {
         label = "Command Prompt",
         args = { "cmd.exe" },
      },
      {
         label = "Git Bash",
         args = { "C:\\Program Files\\Git\\usr\\bin\\bash.exe" },
      },
   }
else
   launch_menu = {
      { label = "bash", args = { "/usr/bin/bash" } },
      { label = "zsh", args = { "/usr/bin/zsh" } },
   }
end

return launch_menu
