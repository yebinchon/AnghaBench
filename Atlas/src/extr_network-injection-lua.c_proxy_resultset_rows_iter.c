
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_6__* row; TYPE_5__* fields; } ;
typedef TYPE_2__ proxy_resultset_t ;
struct TYPE_13__ {int offset; TYPE_1__* data; } ;
typedef TYPE_3__ network_packet ;
typedef int network_mysqld_lenenc_type ;
typedef int lua_State ;
typedef int guint64 ;
typedef scalar_t__ gsize ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_1__* data; } ;
struct TYPE_15__ {scalar_t__ len; } ;
struct TYPE_14__ {TYPE_2__* udata; } ;
struct TYPE_11__ {int len; int str; } ;
typedef TYPE_4__ GRef ;
typedef TYPE_5__ GPtrArray ;
typedef TYPE_6__ GList ;


 int G_STRLOC ;




 int g_return_val_if_fail (int,int ) ;
 int luaL_error (int *,char*,int ) ;
 int lua_newtable (int *) ;
 int lua_pushlstring (int *,int,int) ;
 int lua_pushnil (int *) ;
 int lua_rawseti (int *,int,scalar_t__) ;
 scalar_t__ lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int network_mysqld_proto_get_lenenc_int (TYPE_3__*,int*) ;
 scalar_t__ network_mysqld_proto_peek_lenenc_type (TYPE_3__*,int*) ;
 int network_mysqld_proto_skip (TYPE_3__*,int) ;
 scalar_t__ network_mysqld_proto_skip_network_header (TYPE_3__*) ;

__attribute__((used)) static int proxy_resultset_rows_iter(lua_State *L) {
 GRef *ref = *(GRef **)lua_touserdata(L, lua_upvalueindex(1));
 proxy_resultset_t *res = ref->udata;
 network_packet packet;
 GPtrArray *fields = res->fields;
 gsize i;
 int err = 0;
 network_mysqld_lenenc_type lenenc_type;

 GList *chunk = res->row;

 g_return_val_if_fail(chunk != ((void*)0), 0);

 packet.data = chunk->data;
 packet.offset = 0;

 err = err || network_mysqld_proto_skip_network_header(&packet);
 err = err || network_mysqld_proto_peek_lenenc_type(&packet, &lenenc_type);
 g_return_val_if_fail(err == 0, 0);

 switch (lenenc_type) {
 case 130:






 case 131:

  return 0;
 case 129:
 case 128:
  break;
 }

 lua_newtable(L);

 for (i = 0; i < fields->len; i++) {
  guint64 field_len;

  err = err || network_mysqld_proto_peek_lenenc_type(&packet, &lenenc_type);
  g_return_val_if_fail(err == 0, 0);

  switch (lenenc_type) {
  case 128:
   network_mysqld_proto_skip(&packet, 1);
   lua_pushnil(L);
   break;
  case 129:
   err = err || network_mysqld_proto_get_lenenc_int(&packet, &field_len);
   err = err || !(field_len <= packet.data->len);
   err = err || !(packet.offset + field_len <= packet.data->len);
   if (err) return luaL_error(L, "%s: row-data is invalid", G_STRLOC);

   lua_pushlstring(L, packet.data->str + packet.offset, field_len);

   err = err || network_mysqld_proto_skip(&packet, field_len);
   break;
  default:

   err = 1;
   break;
  }


  lua_rawseti(L, -2, i + 1);
  g_return_val_if_fail(err == 0, 0);
 }

 res->row = res->row->next;

 return 1;
}
