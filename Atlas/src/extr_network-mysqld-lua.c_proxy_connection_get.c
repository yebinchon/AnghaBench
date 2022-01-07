
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_socket ;
struct TYPE_3__ {scalar_t__ backend_ndx; } ;
typedef TYPE_1__ network_mysqld_con_lua_t ;
struct TYPE_4__ {int * client; int * server; TYPE_1__* plugin_con_state; } ;
typedef TYPE_2__ network_mysqld_con ;
typedef int lua_State ;
typedef int gsize ;


 int C (char*) ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_error (int *,char*) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_pushnil (int *) ;
 int lua_setmetatable (int *,int) ;
 int network_socket_lua_getmetatable (int *) ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_connection_get(lua_State *L) {
 network_mysqld_con *con = *(network_mysqld_con **)luaL_checkself(L);
 network_mysqld_con_lua_t *st;
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);

 st = con->plugin_con_state;





 if (strleq(key, keysize, C("default_db"))) {
  return luaL_error(L, "proxy.connection.default_db is deprecated, use proxy.connection.client.default_db or proxy.connection.server.default_db instead");
 } else if (strleq(key, keysize, C("thread_id"))) {
  return luaL_error(L, "proxy.connection.thread_id is deprecated, use proxy.connection.server.thread_id instead");
 } else if (strleq(key, keysize, C("mysqld_version"))) {
  return luaL_error(L, "proxy.connection.mysqld_version is deprecated, use proxy.connection.server.mysqld_version instead");
 } else if (strleq(key, keysize, C("backend_ndx"))) {
  lua_pushinteger(L, st->backend_ndx + 1);
 } else if ((con->server && (strleq(key, keysize, C("server")))) ||
            (con->client && (strleq(key, keysize, C("client"))))) {
  network_socket **socket_p;

  socket_p = lua_newuserdata(L, sizeof(network_socket));

  if (key[0] == 's') {
   *socket_p = con->server;
  } else {
   *socket_p = con->client;
  }

  network_socket_lua_getmetatable(L);
  lua_setmetatable(L, -2);
 } else {
  lua_pushnil(L);
 }

 return 1;
}
