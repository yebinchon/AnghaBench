
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
typedef int lua_State ;


 int gettimeofday (struct timeval*,int ) ;
 int lua_pushnumber (int *,int ) ;

int proxy_tick(lua_State *L)
{
    struct timeval tp;
    gettimeofday(&tp, 0);
 lua_pushnumber(L, tp.tv_sec);
 lua_pushnumber(L, tp.tv_usec);
 return 2;
}
