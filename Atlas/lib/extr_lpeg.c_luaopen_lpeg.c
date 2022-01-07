
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_ENVIRONINDEX ;
 int PATTERN_T ;
 int luaL_newmetatable (int *,int ) ;
 int luaL_register (int *,char*,int ) ;
 int lua_newtable (int *) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_replace (int *,int ) ;
 int lua_settable (int *,int) ;
 int metapattreg ;
 int pattreg ;

int luaopen_lpeg (lua_State *L) {
  lua_newtable(L);
  lua_replace(L, LUA_ENVIRONINDEX);
  luaL_newmetatable(L, PATTERN_T);
  luaL_register(L, ((void*)0), metapattreg);
  luaL_register(L, "lpeg", pattreg);
  lua_pushliteral(L, "__index");
  lua_pushvalue(L, -2);
  lua_settable(L, -4);
  return 1;
}
