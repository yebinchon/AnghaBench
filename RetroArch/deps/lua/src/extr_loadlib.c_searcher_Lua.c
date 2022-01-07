
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_LSUBSEP ;
 scalar_t__ LUA_OK ;
 int checkload (int *,int,char const*) ;
 char* findfile (int *,char const*,char*,int ) ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaL_loadfile (int *,char const*) ;

__attribute__((used)) static int searcher_Lua (lua_State *L) {
  const char *filename;
  const char *name = luaL_checkstring(L, 1);
  filename = findfile(L, name, "path", LUA_LSUBSEP);
  if (filename == ((void*)0)) return 1;
  return checkload(L, (luaL_loadfile(L, filename) == LUA_OK), filename);
}
