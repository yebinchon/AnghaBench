
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int load_aux (int *,int,int) ;
 int luaL_loadfilex (int *,char const*,char const*) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_isnone (int *,int) ;

__attribute__((used)) static int luaB_loadfile (lua_State *L) {
  const char *fname = luaL_optstring(L, 1, ((void*)0));
  const char *mode = luaL_optstring(L, 2, ((void*)0));
  int env = (!lua_isnone(L, 3) ? 3 : 0);
  int status = luaL_loadfilex(L, fname, mode);
  return load_aux(L, status, env);
}
