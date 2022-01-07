
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int network_socket ;
struct TYPE_7__ {int backend_ndx; int connection_close; TYPE_1__* backend; } ;
typedef TYPE_2__ network_mysqld_con_lua_t ;
struct TYPE_8__ {int * server; TYPE_2__* plugin_con_state; } ;
typedef TYPE_3__ network_mysqld_con ;
typedef int lua_State ;
typedef int gsize ;
struct TYPE_6__ {int connected_clients; } ;


 int C (char*) ;
 int LUA_TBOOLEAN ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,char const*) ;
 int lua_toboolean (int *,int) ;
 int network_connection_pool_lua_add_connection (TYPE_3__*) ;
 int * network_connection_pool_lua_swap (TYPE_3__*,int,int *) ;
 int network_socket_free (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_connection_set(lua_State *L) {
 network_mysqld_con *con = *(network_mysqld_con **)luaL_checkself(L);
 network_mysqld_con_lua_t *st;
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);

 st = con->plugin_con_state;

 if (strleq(key, keysize, C("backend_ndx"))) {


  int backend_ndx = luaL_checkinteger(L, 3) - 1;
  network_socket *send_sock;

  if (backend_ndx == -1) {


   network_connection_pool_lua_add_connection(con);
  } else if (((void*)0) != (send_sock = network_connection_pool_lua_swap(con, backend_ndx, ((void*)0)))) {
   con->server = send_sock;
  } else if (backend_ndx == -2) {
   if (st->backend != ((void*)0)) {
    st->backend->connected_clients--;
    st->backend = ((void*)0);
   }
   st->backend_ndx = -1;
   network_socket_free(con->server);
   con->server = ((void*)0);
  } else {
   st->backend_ndx = backend_ndx;
  }
 } else if (0 == strcmp(key, "connection_close")) {
  luaL_checktype(L, 3, LUA_TBOOLEAN);

  st->connection_close = lua_toboolean(L, 3);
 } else {
  return luaL_error(L, "proxy.connection.%s is not writable", key);
 }

 return 0;
}
