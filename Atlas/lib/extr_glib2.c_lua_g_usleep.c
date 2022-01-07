
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int g_usleep (int) ;
 int luaL_checkinteger (int *,int) ;

__attribute__((used)) static int lua_g_usleep (lua_State *L) {
 int ms = luaL_checkinteger (L, 1);

 g_usleep(ms);

 return 0;
}
