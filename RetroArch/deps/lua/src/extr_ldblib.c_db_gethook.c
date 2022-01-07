
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int * lua_Hook ;


 int HOOKKEY ;
 int LUA_REGISTRYINDEX ;
 int checkstack (int *,int *,int) ;
 int * getthread (int *,int*) ;
 int * hookf ;
 int * lua_gethook (int *) ;
 int lua_gethookcount (int *) ;
 int lua_gethookmask (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int lua_pushthread (int *) ;
 int lua_rawget (int *,int) ;
 int lua_rawgetp (int *,int ,int *) ;
 int lua_remove (int *,int) ;
 int lua_xmove (int *,int *,int) ;
 int unmakemask (int,char*) ;

__attribute__((used)) static int db_gethook (lua_State *L) {
  int arg;
  lua_State *L1 = getthread(L, &arg);
  char buff[5];
  int mask = lua_gethookmask(L1);
  lua_Hook hook = lua_gethook(L1);
  if (hook == ((void*)0))
    lua_pushnil(L);
  else if (hook != hookf)
    lua_pushliteral(L, "external hook");
  else {
    lua_rawgetp(L, LUA_REGISTRYINDEX, &HOOKKEY);
    checkstack(L, L1, 1);
    lua_pushthread(L1); lua_xmove(L1, L, 1);
    lua_rawget(L, -2);
    lua_remove(L, -2);
  }
  lua_pushstring(L, unmakemask(mask, buff));
  lua_pushinteger(L, lua_gethookcount(L1));
  return 3;
}
