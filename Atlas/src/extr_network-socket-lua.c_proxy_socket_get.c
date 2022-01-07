
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {TYPE_6__* response; TYPE_5__* challenge; int dst; int src; TYPE_4__* charset_results; TYPE_3__* charset_connection; TYPE_2__* charset_client; TYPE_1__* default_db; } ;
typedef TYPE_7__ network_socket ;
typedef int lua_State ;
typedef int gsize ;
struct TYPE_13__ {int response; int username; } ;
struct TYPE_12__ {int challenge; int thread_id; int server_version; } ;
struct TYPE_11__ {int len; int str; } ;
struct TYPE_10__ {int len; int str; } ;
struct TYPE_9__ {int len; int str; } ;
struct TYPE_8__ {int len; int str; } ;


 int C (char*) ;
 int G_STRLOC ;
 int S (int ) ;
 int g_critical (char*,int ,void*,void*,char const*) ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,int ,...) ;
 int lua_pushnil (int *) ;
 int network_address_lua_push (int *,int ) ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_socket_get(lua_State *L) {
 network_socket *sock = *(network_socket **)luaL_checkself(L);
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);





 if (strleq(key, keysize, C("default_db"))) {
  lua_pushlstring(L, sock->default_db->str, sock->default_db->len);
  return 1;
 }else if (strleq(key, keysize, C("charset_client"))) {
  lua_pushlstring(L, sock->charset_client->str, sock->charset_client->len);
  return 1;
 }else if (strleq(key, keysize, C("charset_connection"))) {
  lua_pushlstring(L, sock->charset_connection->str, sock->charset_connection->len);
  return 1;
 }else if (strleq(key, keysize, C("charset_results"))) {
  lua_pushlstring(L, sock->charset_results->str, sock->charset_results->len);
  return 1;
 }else if (strleq(key, keysize, C("address"))) {
  return luaL_error(L, ".address is deprecated. Use .src.name or .dst.name instead");
 } else if (strleq(key, keysize, C("src"))) {
  return network_address_lua_push(L, sock->src);
 } else if (strleq(key, keysize, C("dst"))) {
  return network_address_lua_push(L, sock->dst);
 }

 if (sock->response) {
  if (strleq(key, keysize, C("username"))) {
   lua_pushlstring(L, S(sock->response->username));
   return 1;
  } else if (strleq(key, keysize, C("scrambled_password"))) {
   lua_pushlstring(L, S(sock->response->response));
   return 1;
  }
 }

 if (sock->challenge) {
  if (strleq(key, keysize, C("mysqld_version"))) {
   lua_pushinteger(L, sock->challenge->server_version);
   return 1;
  } else if (strleq(key, keysize, C("thread_id"))) {
   lua_pushinteger(L, sock->challenge->thread_id);
   return 1;
  } else if (strleq(key, keysize, C("scramble_buffer"))) {
   lua_pushlstring(L, S(sock->challenge->challenge));
   return 1;
  }
 }
 g_critical("%s: sock->challenge: %p, sock->response: %p (looking for %s)",
   G_STRLOC,
   (void *)sock->challenge,
   (void *)sock->response,
   key
   );

 lua_pushnil(L);

 return 1;
}
