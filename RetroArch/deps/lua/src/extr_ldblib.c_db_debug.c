
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int buffer ;


 scalar_t__ fgets (char*,int,int ) ;
 scalar_t__ luaL_loadbuffer (int *,char*,int ,char*) ;
 scalar_t__ lua_pcall (int *,int ,int ,int ) ;
 int lua_settop (int *,int ) ;
 char* lua_tostring (int *,int) ;
 int lua_writestringerror (char*,char*) ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int db_debug (lua_State *L) {
  for (;;) {
    char buffer[250];
    lua_writestringerror("%s", "lua_debug> ");
    if (fgets(buffer, sizeof(buffer), stdin) == 0 ||
        strcmp(buffer, "cont\n") == 0)
      return 0;
    if (luaL_loadbuffer(L, buffer, strlen(buffer), "=(debug command)") ||
        lua_pcall(L, 0, 0, 0))
      lua_writestringerror("%s\n", lua_tostring(L, -1));
    lua_settop(L, 0);
  }
}
