
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char const* LUA_LOADED_TABLE ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TNIL ;
 int findloader (int *,char const*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_call (int *,int,int) ;
 scalar_t__ lua_getfield (int *,int,char const*) ;
 int lua_insert (int *,int) ;
 int lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char const*) ;
 int lua_settop (int *,int) ;
 scalar_t__ lua_toboolean (int *,int) ;

__attribute__((used)) static int ll_require (lua_State *L) {
  const char *name = luaL_checkstring(L, 1);
  lua_settop(L, 1);
  lua_getfield(L, LUA_REGISTRYINDEX, LUA_LOADED_TABLE);
  lua_getfield(L, 2, name);
  if (lua_toboolean(L, -1))
    return 1;

  lua_pop(L, 1);
  findloader(L, name);
  lua_pushstring(L, name);
  lua_insert(L, -2);
  lua_call(L, 2, 1);
  if (!lua_isnil(L, -1))
    lua_setfield(L, 2, name);
  if (lua_getfield(L, 2, name) == LUA_TNIL) {
    lua_pushboolean(L, 1);
    lua_pushvalue(L, -1);
    lua_setfield(L, 2, name);
  }
  return 1;
}
