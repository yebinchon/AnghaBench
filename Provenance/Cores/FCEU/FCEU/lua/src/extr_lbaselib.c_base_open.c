
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_GLOBALSINDEX ;
 char* LUA_VERSION ;
 int auxopen (int *,char*,int ,int ) ;
 int base_funcs ;
 int ipairsaux ;
 int luaB_ipairs ;
 int luaB_newproxy ;
 int luaB_next ;
 int luaB_pairs ;
 int luaL_register (int *,char*,int ) ;
 int lua_createtable (int *,int ,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setglobal (int *,char*) ;
 int lua_setmetatable (int *,int) ;

__attribute__((used)) static void base_open (lua_State *L) {

  lua_pushvalue(L, LUA_GLOBALSINDEX);
  lua_setglobal(L, "_G");

  luaL_register(L, "_G", base_funcs);
  lua_pushliteral(L, LUA_VERSION);
  lua_setglobal(L, "_VERSION");

  auxopen(L, "ipairs", luaB_ipairs, ipairsaux);
  auxopen(L, "pairs", luaB_pairs, luaB_next);

  lua_createtable(L, 0, 1);
  lua_pushvalue(L, -1);
  lua_setmetatable(L, -2);
  lua_pushliteral(L, "kv");
  lua_setfield(L, -2, "__mode");
  lua_pushcclosure(L, luaB_newproxy, 1);
  lua_setglobal(L, "newproxy");
}
