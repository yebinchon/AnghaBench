
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_backends_t ;
typedef int lua_State ;


 scalar_t__ luaL_checkself (int *) ;
 int lua_pushinteger (int *,int ) ;
 int network_backends_count (int *) ;

__attribute__((used)) static int proxy_backends_len(lua_State *L) {
 network_backends_t *bs = *(network_backends_t **)luaL_checkself(L);
 lua_pushinteger(L, network_backends_count(bs));
 return 1;
}
