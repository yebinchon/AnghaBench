
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luaL_reg {char* member_0; int * member_1; } ;
typedef int lua_State ;





 int proxy_getmetatable (int *,struct luaL_reg const*) ;

int network_clients_lua_getmetatable(lua_State *L) {
 static const struct luaL_reg methods[] = {
  { "__index", 129 },
  { "__len", 128 },
  { "__call", 130 },
  { ((void*)0), ((void*)0) },
 };

 return proxy_getmetatable(L, methods);
}
