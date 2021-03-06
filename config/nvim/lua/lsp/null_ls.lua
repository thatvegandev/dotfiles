local null_ls = require 'null-ls'
local b = null_ls.builtins

local M = {}

M.setup = function(on_attach)
  null_ls.setup {
    sources = {
      b.diagnostics.eslint,
      b.code_actions.eslint,
      -- NOTE: for stylua, prettier, etc to work, they must be installed on the machine!
      b.formatting.stylua,
      b.formatting.prettier,
    },
    on_attach = on_attach,
  }
end

return M
