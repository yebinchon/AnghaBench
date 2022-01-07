
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_address ;
typedef int lua_State ;


 int ** lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_setmetatable (int *,int) ;
 int network_address_lua_getmetatable (int *) ;

int network_address_lua_push(lua_State *L, network_address *addr) {
 network_address **address_p;

 if (!addr) {
  lua_pushnil(L);
  return 1;
 }

 address_p = lua_newuserdata(L, sizeof(network_address));
 *address_p = addr;

 network_address_lua_getmetatable(L);
 lua_setmetatable(L, -2);

 return 1;
}
