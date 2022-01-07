
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lib ;
 int luaL_newlib (int *,int ) ;

extern int luaopen_luaconnector(lua_State* L)
{
    luaL_newlib(L, lib);

    return 1;
}
