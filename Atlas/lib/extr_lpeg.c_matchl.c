
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;
typedef int Instruction ;
typedef int Capture ;


 int IMAXCAPTURES ;
 int SUBJIDX ;
 int getcaptures (int *,char const*,char const*,int) ;
 int * getpatt (int *,int,int *) ;
 char* luaL_checklstring (int *,int ,size_t*) ;
 scalar_t__ luaL_optinteger (int *,int,int) ;
 int lua_getfenv (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushnil (int *) ;
 char* match (int *,char const*,char const*,char const*,int *,int *,int) ;

__attribute__((used)) static int matchl (lua_State *L) {
  Capture capture[IMAXCAPTURES];
  const char *r;
  size_t l;
  Instruction *p = getpatt(L, 1, ((void*)0));
  const char *s = luaL_checklstring(L, SUBJIDX, &l);
  int ptop = lua_gettop(L);
  lua_Integer ii = luaL_optinteger(L, 3, 1);
  size_t i = (ii > 0) ?
             (((size_t)ii <= l) ? (size_t)ii - 1 : l) :
             (((size_t)-ii <= l) ? l - ((size_t)-ii) : 0);
  lua_pushnil(L);
  lua_pushlightuserdata(L, capture);
  lua_getfenv(L, 1);
  r = match(L, s, s + i, s + l, p, capture, ptop);
  if (r == ((void*)0)) {
    lua_pushnil(L);
    return 1;
  }
  return getcaptures(L, s, r, ptop);
}
