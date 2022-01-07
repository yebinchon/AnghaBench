
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_register (int *,char*,int ) ;
 int time_ticklib ;

extern int luaopen_time_ticker(lua_State *L)
{
  luaL_register(L, "ticker", time_ticklib);
  return 1;
}
