
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_err_packet_t ;
typedef int lua_State ;
typedef int GString ;


 int LUA_IMPORT_INT (int *,int ) ;
 int LUA_IMPORT_STR (int *,int ) ;
 int LUA_TTABLE ;
 int S (int *) ;
 int TRUE ;
 int errcode ;
 int errmsg ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_pushlstring (int *,int ) ;
 int network_mysqld_err_packet_free (int *) ;
 int * network_mysqld_err_packet_new () ;
 int network_mysqld_proto_append_err_packet (int *,int *) ;
 int sqlstate ;

__attribute__((used)) static int lua_proto_append_err_packet (lua_State *L) {
 GString *packet;
 network_mysqld_err_packet_t *err_packet;

 luaL_checktype(L, 1, LUA_TTABLE);

 err_packet = network_mysqld_err_packet_new();

 LUA_IMPORT_STR(err_packet, errmsg);
 LUA_IMPORT_STR(err_packet, sqlstate);
 LUA_IMPORT_INT(err_packet, errcode);

 packet = g_string_new(((void*)0));
 network_mysqld_proto_append_err_packet(packet, err_packet);

 network_mysqld_err_packet_free(err_packet);

 lua_pushlstring(L, S(packet));

 g_string_free(packet, TRUE);

 return 1;
}
