
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,int ) ;
 int lua_getfenv (int *,int) ;
 int lua_gettable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_tointeger (int *,int) ;
 int val2str (int *,int) ;

__attribute__((used)) static int getposition (lua_State *L, int t, int i) {
  int res;
  lua_getfenv(L, -1);
  lua_rawgeti(L, -1, i);
  lua_gettable(L, t);
  res = lua_tointeger(L, -1);
  if (res == 0) {
    lua_rawgeti(L, -2, i);
    return luaL_error(L, "%s is not defined in given grammar", val2str(L, -1));
  }
  lua_pop(L, 2);
  return res;
}
