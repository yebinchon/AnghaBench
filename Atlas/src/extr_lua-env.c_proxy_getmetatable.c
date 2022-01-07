
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_reg ;


 int LUA_REGISTRYINDEX ;
 int g_assert (int ) ;
 int luaL_register (int *,int *,int const*) ;
 int lua_gettable (int *,int ) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int ) ;

int proxy_getmetatable(lua_State *L, const luaL_reg *methods) {


 lua_pushlightuserdata(L, (luaL_reg *)methods);
 lua_gettable(L, LUA_REGISTRYINDEX);

 if (lua_isnil(L, -1)) {

  lua_pop(L, 1);

  lua_newtable(L);
  luaL_register(L, ((void*)0), methods);

  lua_pushlightuserdata(L, (luaL_reg *)methods);
  lua_pushvalue(L, -2);
  lua_settable(L, LUA_REGISTRYINDEX);
 }
 g_assert(lua_istable(L, -1));

 return 1;
}
