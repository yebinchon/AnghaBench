
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_ok_packet_t ;
typedef int lua_State ;
typedef int GString ;


 int LUA_IMPORT_INT (int *,int ) ;
 int LUA_TTABLE ;
 int S (int *) ;
 int TRUE ;
 int affected_rows ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int insert_id ;
 int luaL_checktype (int *,int,int ) ;
 int lua_pushlstring (int *,int ) ;
 int network_mysqld_ok_packet_free (int *) ;
 int * network_mysqld_ok_packet_new () ;
 int network_mysqld_proto_append_ok_packet (int *,int *) ;
 int server_status ;
 int warnings ;

__attribute__((used)) static int lua_proto_append_ok_packet (lua_State *L) {
 GString *packet;
 network_mysqld_ok_packet_t *ok_packet;

 luaL_checktype(L, 1, LUA_TTABLE);

 ok_packet = network_mysqld_ok_packet_new();

 LUA_IMPORT_INT(ok_packet, server_status);
 LUA_IMPORT_INT(ok_packet, insert_id);
 LUA_IMPORT_INT(ok_packet, warnings);
 LUA_IMPORT_INT(ok_packet, affected_rows);

 packet = g_string_new(((void*)0));
 network_mysqld_proto_append_ok_packet(packet, ok_packet);

 network_mysqld_ok_packet_free(ok_packet);

 lua_pushlstring(L, S(packet));

 g_string_free(packet, TRUE);

 return 1;
}
