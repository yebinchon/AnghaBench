
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int methods_proxy_queue ;
 int proxy_getmetatable (int *,int ) ;

void proxy_getqueuemetatable(lua_State *L) {
    proxy_getmetatable(L, methods_proxy_queue);
}
