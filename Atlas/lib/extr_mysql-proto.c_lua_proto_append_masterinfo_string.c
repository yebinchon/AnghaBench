
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_masterinfo_t ;
typedef int lua_State ;
typedef int GString ;


 int LUA_IMPORT_INT (int *,int ) ;
 int LUA_IMPORT_STR (int *,int ) ;
 int LUA_TTABLE ;
 int S (int *) ;
 int TRUE ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_pushlstring (int *,int ) ;
 int master_connect_retry ;
 int master_host ;
 int master_lines ;
 int master_log_file ;
 int master_log_pos ;
 int master_password ;
 int master_port ;
 int master_ssl ;
 int master_ssl_ca ;
 int master_ssl_capath ;
 int master_ssl_cert ;
 int master_ssl_cipher ;
 int master_ssl_key ;
 int master_ssl_verify_server_cert ;
 int master_user ;
 int network_mysqld_masterinfo_append (int *,int *) ;
 int network_mysqld_masterinfo_free (int *) ;
 int * network_mysqld_masterinfo_new () ;

__attribute__((used)) static int lua_proto_append_masterinfo_string (lua_State *L) {
        GString *packet;
        network_mysqld_masterinfo_t *info;

        luaL_checktype(L, 1, LUA_TTABLE);

        info = network_mysqld_masterinfo_new();

        LUA_IMPORT_INT(info, master_lines);
        LUA_IMPORT_STR(info, master_log_file);
        LUA_IMPORT_INT(info, master_log_pos);
        LUA_IMPORT_STR(info, master_host);
        LUA_IMPORT_STR(info, master_user);
        LUA_IMPORT_STR(info, master_password);
        LUA_IMPORT_INT(info, master_port);
        LUA_IMPORT_INT(info, master_connect_retry);
        LUA_IMPORT_INT(info, master_ssl);
        LUA_IMPORT_STR(info, master_ssl_ca);
        LUA_IMPORT_STR(info, master_ssl_capath);
        LUA_IMPORT_STR(info, master_ssl_cert);
        LUA_IMPORT_STR(info, master_ssl_cipher);
        LUA_IMPORT_STR(info, master_ssl_key);
        LUA_IMPORT_INT(info, master_ssl_verify_server_cert);

        packet = g_string_new(((void*)0));
        network_mysqld_masterinfo_append(packet, info);

        network_mysqld_masterinfo_free(info);

        lua_pushlstring(L, S(packet));

        g_string_free(packet, TRUE);

        return 1;
}
