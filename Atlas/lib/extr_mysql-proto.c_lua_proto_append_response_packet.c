
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_auth_response ;
typedef int lua_State ;
typedef int GString ;


 int LUA_IMPORT_INT (int *,int ) ;
 int LUA_IMPORT_STR (int *,int ) ;
 int LUA_TTABLE ;
 int S (int *) ;
 int TRUE ;
 int capabilities ;
 int charset ;
 int database ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_pushlstring (int *,int ) ;
 int max_packet_size ;
 int network_mysqld_auth_response_free (int *) ;
 int * network_mysqld_auth_response_new () ;
 scalar_t__ network_mysqld_proto_append_auth_response (int *,int *) ;
 int response ;
 int username ;

__attribute__((used)) static int lua_proto_append_response_packet (lua_State *L) {
 GString *packet;
 network_mysqld_auth_response *auth_response;

 luaL_checktype(L, 1, LUA_TTABLE);

 packet = g_string_new(((void*)0));
 auth_response = network_mysqld_auth_response_new();

 LUA_IMPORT_INT(auth_response, capabilities);
 LUA_IMPORT_INT(auth_response, max_packet_size);
 LUA_IMPORT_INT(auth_response, charset);

 LUA_IMPORT_STR(auth_response, username);
 LUA_IMPORT_STR(auth_response, response);
 LUA_IMPORT_STR(auth_response, database);

 if (network_mysqld_proto_append_auth_response(packet, auth_response)) {
  network_mysqld_auth_response_free(auth_response);
  g_string_free(packet, TRUE);

  luaL_error(L, "to_response_packet() failed");
        g_string_free(packet, TRUE);
  return 0;
 }

 network_mysqld_auth_response_free(auth_response);

 lua_pushlstring(L, S(packet));

 g_string_free(packet, TRUE);

 return 1;
}
