
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_auth_challenge ;
typedef int lua_State ;
typedef int GString ;


 int LUA_IMPORT_INT (int *,int ) ;
 int LUA_IMPORT_STR (int *,int ) ;
 int LUA_TTABLE ;
 int S (int *) ;
 int TRUE ;
 int capabilities ;
 int challenge ;
 int charset ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_pushlstring (int *,int ) ;
 int network_mysqld_auth_challenge_free (int *) ;
 int * network_mysqld_auth_challenge_new () ;
 int network_mysqld_proto_append_auth_challenge (int *,int *) ;
 int protocol_version ;
 int server_status ;
 int server_version ;
 int thread_id ;

__attribute__((used)) static int lua_proto_append_challenge_packet (lua_State *L) {
 GString *packet;
 network_mysqld_auth_challenge *auth_challenge;

 luaL_checktype(L, 1, LUA_TTABLE);

 auth_challenge = network_mysqld_auth_challenge_new();

 LUA_IMPORT_INT(auth_challenge, protocol_version);
 LUA_IMPORT_INT(auth_challenge, server_version);
 LUA_IMPORT_INT(auth_challenge, thread_id);
 LUA_IMPORT_INT(auth_challenge, capabilities);
 LUA_IMPORT_INT(auth_challenge, charset);
 LUA_IMPORT_INT(auth_challenge, server_status);

 LUA_IMPORT_STR(auth_challenge, challenge);

 packet = g_string_new(((void*)0));
 network_mysqld_proto_append_auth_challenge(packet, auth_challenge);

 network_mysqld_auth_challenge_free(auth_challenge);

 lua_pushlstring(L, S(packet));

 g_string_free(packet, TRUE);

 return 1;
}
