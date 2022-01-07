
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int GQueue ;


 scalar_t__ luaL_checkself (int *) ;
 int network_injection_queue_reset (int *) ;

__attribute__((used)) static int proxy_queue_reset(lua_State *L) {

 GQueue *q = *(GQueue **)luaL_checkself(L);

 network_injection_queue_reset(q);

 return 0;
}
