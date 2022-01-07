
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_Hook ;


 int LUA_TFUNCTION ;
 int gethooktable (int *) ;
 int * getthread (int *,int*) ;
 int * hookf ;
 char* luaL_checkstring (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_optint (int *,int,int ) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawset (int *,int) ;
 int lua_sethook (int *,int *,int,int) ;
 int lua_settop (int *,int) ;
 int makemask (char const*,int) ;

__attribute__((used)) static int db_sethook (lua_State *L) {
  int arg, mask, count;
  lua_Hook func;
  lua_State *L1 = getthread(L, &arg);
  if (lua_isnoneornil(L, arg+1)) {
    lua_settop(L, arg+1);
    func = ((void*)0); mask = 0; count = 0;
  }
  else {
    const char *smask = luaL_checkstring(L, arg+2);
    luaL_checktype(L, arg+1, LUA_TFUNCTION);
    count = luaL_optint(L, arg+3, 0);
    func = hookf; mask = makemask(smask, count);
  }
  gethooktable(L);
  lua_pushlightuserdata(L, L1);
  lua_pushvalue(L, arg+1);
  lua_rawset(L, -3);
  lua_pop(L, 1);
  lua_sethook(L1, func, mask, count);
  return 0;
}
