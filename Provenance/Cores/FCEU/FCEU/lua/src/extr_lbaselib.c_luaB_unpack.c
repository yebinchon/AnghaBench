
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checkint ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int luaL_getn (int *,int) ;
 int luaL_opt (int *,int ,int,int ) ;
 int luaL_optint (int *,int,int) ;
 int lua_checkstack (int *,int) ;
 int lua_rawgeti (int *,int,int) ;

__attribute__((used)) static int luaB_unpack (lua_State *L) {
  int i, e, n;
  luaL_checktype(L, 1, LUA_TTABLE);
  i = luaL_optint(L, 2, 1);
  e = luaL_opt(L, luaL_checkint, 3, luaL_getn(L, 1));
  if (i > e) return 0;
  n = e - i + 1;
  if (n <= 0 || !lua_checkstack(L, n))
    return luaL_error(L, "too many results to unpack");
  lua_rawgeti(L, 1, i);
  while (i++ < e)
    lua_rawgeti(L, 1, i);
  return n;
}
