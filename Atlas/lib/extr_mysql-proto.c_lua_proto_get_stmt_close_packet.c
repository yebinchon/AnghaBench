
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; TYPE_2__* data; } ;
typedef TYPE_1__ network_packet ;
typedef int network_mysqld_stmt_close_packet_t ;
typedef int lua_State ;
struct TYPE_5__ {char* str; size_t len; } ;
typedef TYPE_2__ GString ;


 int G_STRLOC ;
 int LUA_EXPORT_INT (int *,int ) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_newtable (int *) ;
 scalar_t__ network_mysqld_proto_get_stmt_close_packet (TYPE_1__*,int *) ;
 int network_mysqld_stmt_close_packet_free (int *) ;
 int * network_mysqld_stmt_close_packet_new () ;
 int stmt_id ;

__attribute__((used)) static int lua_proto_get_stmt_close_packet (lua_State *L) {
 size_t packet_len;
 const char *packet_str = luaL_checklstring(L, 1, &packet_len);
 network_mysqld_stmt_close_packet_t *cmd;
 network_packet packet;
 GString s;
 int err = 0;

 s.str = (char *)packet_str;
 s.len = packet_len;

 packet.data = &s;
 packet.offset = 0;

 cmd = network_mysqld_stmt_close_packet_new();

 err = err || network_mysqld_proto_get_stmt_close_packet(&packet, cmd);
 if (err) {
  network_mysqld_stmt_close_packet_free(cmd);

  luaL_error(L, "%s: network_mysqld_proto_get_stmt_close_packet() failed", G_STRLOC);
  return 0;
 }

 lua_newtable(L);

 LUA_EXPORT_INT(cmd, stmt_id);

 network_mysqld_stmt_close_packet_free(cmd);

 return 1;
}
