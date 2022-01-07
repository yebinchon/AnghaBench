
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int lua_State ;


 int difftime (int ,int ) ;
 scalar_t__ luaL_checknumber (int *,int) ;
 scalar_t__ luaL_optnumber (int *,int,int ) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static int os_difftime (lua_State *L) {
  lua_pushnumber(L, difftime((time_t)(luaL_checknumber(L, 1)),
                             (time_t)(luaL_optnumber(L, 2, 0))));
  return 1;
}
