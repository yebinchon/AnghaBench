
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TSTRING ;
 int LUA_TTABLE ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_pushinteger (int *,int ) ;
 int lua_rawlen (int *,int) ;
 int lua_type (int *,int) ;

__attribute__((used)) static int luaB_rawlen (lua_State *L) {
  int t = lua_type(L, 1);
  luaL_argcheck(L, t == LUA_TTABLE || t == LUA_TSTRING, 1,
                   "table or string expected");
  lua_pushinteger(L, lua_rawlen(L, 1));
  return 1;
}
