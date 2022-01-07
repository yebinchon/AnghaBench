
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; TYPE_2__* data; } ;
typedef TYPE_1__ network_packet ;
typedef int network_mysqld_auth_challenge ;
typedef int lua_State ;
struct TYPE_5__ {char* str; size_t len; } ;
typedef TYPE_2__ GString ;


 int G_STRLOC ;
 int LUA_EXPORT_INT (int *,int ) ;
 int LUA_EXPORT_STR (int *,int ) ;
 int capabilities ;
 int challenge ;
 int charset ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_newtable (int *) ;
 int network_mysqld_auth_challenge_free (int *) ;
 int * network_mysqld_auth_challenge_new () ;
 scalar_t__ network_mysqld_proto_get_auth_challenge (TYPE_1__*,int *) ;
 int protocol_version ;
 int server_status ;
 int server_version ;
 int thread_id ;

__attribute__((used)) static int lua_proto_get_challenge_packet (lua_State *L) {
 size_t packet_len;
 const char *packet_str = luaL_checklstring(L, 1, &packet_len);
 network_mysqld_auth_challenge *auth_challenge;
 network_packet packet;
 GString s;
 int err = 0;

 s.str = (char *)packet_str;
 s.len = packet_len;

 packet.data = &s;
 packet.offset = 0;

 auth_challenge = network_mysqld_auth_challenge_new();

 err = err || network_mysqld_proto_get_auth_challenge(&packet, auth_challenge);
 if (err) {
  network_mysqld_auth_challenge_free(auth_challenge);

  luaL_error(L, "%s: network_mysqld_proto_get_auth_challenge() failed", G_STRLOC);
  return 0;
 }

 lua_newtable(L);
 LUA_EXPORT_INT(auth_challenge, protocol_version);
 LUA_EXPORT_INT(auth_challenge, server_version);
 LUA_EXPORT_INT(auth_challenge, thread_id);
 LUA_EXPORT_INT(auth_challenge, capabilities);
 LUA_EXPORT_INT(auth_challenge, charset);
 LUA_EXPORT_INT(auth_challenge, server_status);

 LUA_EXPORT_STR(auth_challenge, challenge);

 network_mysqld_auth_challenge_free(auth_challenge);

 return 1;
}
