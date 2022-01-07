
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ offset; TYPE_3__* data; } ;
typedef TYPE_1__ network_packet ;
struct TYPE_11__ {int master_lines; } ;
typedef TYPE_2__ network_mysqld_masterinfo_t ;
typedef int lua_State ;
struct TYPE_12__ {char* str; size_t len; } ;
typedef TYPE_3__ GString ;


 int G_STRLOC ;
 int LUA_EXPORT_INT (TYPE_2__*,int ) ;
 int LUA_EXPORT_STR (TYPE_2__*,int ) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_newtable (int *) ;
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
 int network_mysqld_masterinfo_free (TYPE_2__*) ;
 scalar_t__ network_mysqld_masterinfo_get (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* network_mysqld_masterinfo_new () ;

__attribute__((used)) static int lua_proto_get_masterinfo_string (lua_State *L) {
 size_t packet_len;
 const char *packet_str = luaL_checklstring(L, 1, &packet_len);
 network_mysqld_masterinfo_t *info;

 network_packet packet;
 GString s;
 int err = 0;

 s.str = (char *)packet_str;
 s.len = packet_len;

 packet.data = &s;
 packet.offset = 0;

 info = network_mysqld_masterinfo_new();

 err = err || network_mysqld_masterinfo_get(&packet, info);

 if (err) {
  network_mysqld_masterinfo_free(info);
  luaL_error(L, "%s: network_mysqld_masterinfo_get() failed", G_STRLOC);
  return 0;
 }

 lua_newtable(L);

        LUA_EXPORT_INT(info, master_lines);
 LUA_EXPORT_STR(info, master_log_file);
 LUA_EXPORT_INT(info, master_log_pos);
 LUA_EXPORT_STR(info, master_host);
 LUA_EXPORT_STR(info, master_user);
 LUA_EXPORT_STR(info, master_password);
 LUA_EXPORT_INT(info, master_port);
 LUA_EXPORT_INT(info, master_connect_retry);
 LUA_EXPORT_INT(info, master_ssl);
        LUA_EXPORT_STR(info, master_ssl_ca);
        LUA_EXPORT_STR(info, master_ssl_capath);
        LUA_EXPORT_STR(info, master_ssl_cert);
        LUA_EXPORT_STR(info, master_ssl_cipher);
        LUA_EXPORT_STR(info, master_ssl_key);
        if (info->master_lines >= 15) {
  LUA_EXPORT_INT(info, master_ssl_verify_server_cert);
 }

 network_mysqld_masterinfo_free(info);

 return 1;
}
