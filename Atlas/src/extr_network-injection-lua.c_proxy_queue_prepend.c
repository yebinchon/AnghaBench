
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int PROXY_QUEUE_ADD_PREPEND ;
 int proxy_queue_add (int *,int ) ;

__attribute__((used)) static int proxy_queue_prepend(lua_State *L) {
 return proxy_queue_add(L, PROXY_QUEUE_ADD_PREPEND);
}
