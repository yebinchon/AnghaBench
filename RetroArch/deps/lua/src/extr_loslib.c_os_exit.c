
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int exit (int) ;
 scalar_t__ luaL_optinteger (int *,int,int) ;
 int lua_close (int *) ;
 scalar_t__ lua_isboolean (int *,int) ;
 scalar_t__ lua_toboolean (int *,int) ;

__attribute__((used)) static int os_exit (lua_State *L) {
  int status;
  if (lua_isboolean(L, 1))
    status = (lua_toboolean(L, 1) ? EXIT_SUCCESS : EXIT_FAILURE);
  else
    status = (int)luaL_optinteger(L, 1, EXIT_SUCCESS);
  if (lua_toboolean(L, 2))
    lua_close(L);
  if (L) exit(status);
  return 0;
}
