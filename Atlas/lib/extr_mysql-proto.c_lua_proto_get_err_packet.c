
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; TYPE_2__* data; } ;
typedef TYPE_1__ network_packet ;
typedef int network_mysqld_err_packet_t ;
typedef int lua_State ;
struct TYPE_5__ {char* str; size_t len; } ;
typedef TYPE_2__ GString ;


 int G_STRLOC ;
 int LUA_EXPORT_INT (int *,int ) ;
 int LUA_EXPORT_STR (int *,int ) ;
 int errcode ;
 int errmsg ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_newtable (int *) ;
 int network_mysqld_err_packet_free (int *) ;
 int * network_mysqld_err_packet_new () ;
 scalar_t__ network_mysqld_proto_get_err_packet (TYPE_1__*,int *) ;
 int sqlstate ;

__attribute__((used)) static int lua_proto_get_err_packet (lua_State *L) {
 size_t packet_len;
 const char *packet_str = luaL_checklstring(L, 1, &packet_len);
 network_mysqld_err_packet_t *err_packet;
 network_packet packet;
 GString s;
 int err = 0;

 s.str = (char *)packet_str;
 s.len = packet_len;

 packet.data = &s;
 packet.offset = 0;

 err_packet = network_mysqld_err_packet_new();

 err = err || network_mysqld_proto_get_err_packet(&packet, err_packet);
 if (err) {
  network_mysqld_err_packet_free(err_packet);

  luaL_error(L, "%s: network_mysqld_proto_get_err_packet() failed", G_STRLOC);
  return 0;
 }

 lua_newtable(L);

 LUA_EXPORT_STR(err_packet, errmsg);
 LUA_EXPORT_STR(err_packet, sqlstate);
 LUA_EXPORT_INT(err_packet, errcode);

 network_mysqld_err_packet_free(err_packet);

 return 1;
}
