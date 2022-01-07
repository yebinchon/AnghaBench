
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_backends_t ;
typedef int network_backend_t ;
typedef int lua_State ;
typedef int backend ;


 int luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkself (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_setmetatable (int *,int) ;
 int network_backend_lua_getmetatable (int *) ;
 int * network_backends_get (int *,int) ;

__attribute__((used)) static int proxy_backends_get(lua_State *L) {
 network_backend_t *backend;
 network_backend_t **backend_p;

 network_backends_t *bs = *(network_backends_t **)luaL_checkself(L);
 int backend_ndx = luaL_checkinteger(L, 2) - 1;


 if (((void*)0) == (backend = network_backends_get(bs, backend_ndx))) {
  lua_pushnil(L);

  return 1;
 }

 backend_p = lua_newuserdata(L, sizeof(backend));
 *backend_p = backend;

 network_backend_lua_getmetatable(L);
 lua_setmetatable(L, -2);

 return 1;
}
