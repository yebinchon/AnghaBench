
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int weight; TYPE_2__* uuid; int type; int state; int addr; int connected_clients; } ;
typedef TYPE_1__ network_backend_t ;
typedef int lua_State ;
typedef int gsize ;
struct TYPE_4__ {scalar_t__ len; } ;


 int C (char*) ;
 int S (TYPE_2__*) ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,int ) ;
 int lua_pushnil (int *) ;
 int network_address_lua_push (int *,int ) ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_backend_get(lua_State *L) {
 network_backend_t *backend = *(network_backend_t **)luaL_checkself(L);
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);

 if (strleq(key, keysize, C("connected_clients"))) {
  lua_pushinteger(L, backend->connected_clients);
 } else if (strleq(key, keysize, C("dst"))) {
  network_address_lua_push(L, backend->addr);
 } else if (strleq(key, keysize, C("state"))) {
  lua_pushinteger(L, backend->state);
 } else if (strleq(key, keysize, C("type"))) {
  lua_pushinteger(L, backend->type);
 } else if (strleq(key, keysize, C("uuid"))) {
  if (backend->uuid->len) {
   lua_pushlstring(L, S(backend->uuid));
  } else {
   lua_pushnil(L);
  }
 } else if (strleq(key, keysize, C("weight"))) {
  lua_pushinteger(L, backend->weight);
 } else {
  lua_pushnil(L);
 }

 return 1;
}
