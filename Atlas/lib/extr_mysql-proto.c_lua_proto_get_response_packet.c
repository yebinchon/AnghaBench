
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; TYPE_2__* data; } ;
typedef TYPE_1__ network_packet ;
typedef int network_mysqld_auth_response ;
typedef int lua_State ;
struct TYPE_5__ {char* str; size_t len; } ;
typedef TYPE_2__ GString ;


 int G_STRLOC ;
 int LUA_EXPORT_INT (int *,int ) ;
 int LUA_EXPORT_STR (int *,int ) ;
 int capabilities ;
 int charset ;
 int database ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_newtable (int *) ;
 int max_packet_size ;
 int network_mysqld_auth_response_free (int *) ;
 int * network_mysqld_auth_response_new () ;
 scalar_t__ network_mysqld_proto_get_auth_response (TYPE_1__*,int *) ;
 int response ;
 int username ;

__attribute__((used)) static int lua_proto_get_response_packet (lua_State *L) {
 size_t packet_len;
 const char *packet_str = luaL_checklstring(L, 1, &packet_len);
 network_mysqld_auth_response *auth_response;
 network_packet packet;
 GString s;
 int err = 0;

 s.str = (char *)packet_str;
 s.len = packet_len;

 packet.data = &s;
 packet.offset = 0;

 auth_response = network_mysqld_auth_response_new();

 err = err || network_mysqld_proto_get_auth_response(&packet, auth_response);
 if (err) {
  network_mysqld_auth_response_free(auth_response);

  luaL_error(L, "%s: network_mysqld_proto_get_auth_response() failed", G_STRLOC);
  return 0;
 }

 lua_newtable(L);
 LUA_EXPORT_INT(auth_response, capabilities);
 LUA_EXPORT_INT(auth_response, max_packet_size);
 LUA_EXPORT_INT(auth_response, charset);

 LUA_EXPORT_STR(auth_response, username);
 LUA_EXPORT_STR(auth_response, response);
 LUA_EXPORT_STR(auth_response, database);

 network_mysqld_auth_response_free(auth_response);

 return 1;
}
