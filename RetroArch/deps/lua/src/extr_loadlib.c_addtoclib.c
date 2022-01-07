
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CLIBS ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ luaL_len (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,void*) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgetp (int *,int ,int *) ;
 int lua_rawseti (int *,int,scalar_t__) ;
 int lua_setfield (int *,int,char const*) ;

__attribute__((used)) static void addtoclib (lua_State *L, const char *path, void *plib) {
  lua_rawgetp(L, LUA_REGISTRYINDEX, &CLIBS);
  lua_pushlightuserdata(L, plib);
  lua_pushvalue(L, -1);
  lua_setfield(L, -3, path);
  lua_rawseti(L, -2, luaL_len(L, -2) + 1);
  lua_pop(L, 1);
}
