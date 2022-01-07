
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_GLOBALSINDEX ;
 int lua_call (int *,int,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_isfunction (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int traceback (lua_State *L) {
  if (!lua_isstring(L, 1))
    return 1;
  lua_getfield(L, LUA_GLOBALSINDEX, "debug");
  if (!lua_istable(L, -1)) {
    lua_pop(L, 1);
    return 1;
  }
  lua_getfield(L, -1, "traceback");
  if (!lua_isfunction(L, -1)) {
    lua_pop(L, 2);
    return 1;
  }
  lua_pushvalue(L, 1);
  lua_pushinteger(L, 2);
  lua_call(L, 2, 1);
  return 1;
}
