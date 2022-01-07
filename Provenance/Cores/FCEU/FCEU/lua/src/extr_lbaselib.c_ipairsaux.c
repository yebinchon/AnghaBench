
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checkint (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_rawgeti (int *,int,int) ;

__attribute__((used)) static int ipairsaux (lua_State *L) {
  int i = luaL_checkint(L, 2);
  luaL_checktype(L, 1, LUA_TTABLE);
  i++;
  lua_pushinteger(L, i);
  lua_rawgeti(L, 1, i);
  return (lua_isnil(L, -1)) ? 0 : 2;
}
