
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 void* lua_touserdata (int *,int) ;

void *luaL_checkself (lua_State *L) {
 return lua_touserdata(L, 1);
}
