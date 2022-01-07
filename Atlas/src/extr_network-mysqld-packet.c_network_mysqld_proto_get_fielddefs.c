
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ offset; int data; } ;
typedef TYPE_1__ network_packet ;
typedef int network_mysqld_proto_fielddef_t ;
typedef int network_mysqld_lenenc_type ;
typedef scalar_t__ guint64 ;
typedef int guint32 ;
typedef scalar_t__ guint ;
struct TYPE_11__ {int data; struct TYPE_11__* next; } ;
typedef int GPtrArray ;
typedef TYPE_2__ GList ;


 int CLIENT_PROTOCOL_41 ;
 int NETWORK_MYSQLD_LENENC_TYPE_EOF ;

 int g_assert (TYPE_2__*) ;
 int g_ptr_array_add (int *,int *) ;
 int * network_mysqld_proto_fielddef_new () ;
 scalar_t__ network_mysqld_proto_get_fielddef (TYPE_1__*,int *,int ) ;
 scalar_t__ network_mysqld_proto_get_lenenc_int (TYPE_1__*,scalar_t__*) ;
 scalar_t__ network_mysqld_proto_peek_lenenc_type (TYPE_1__*,int*) ;
 scalar_t__ network_mysqld_proto_skip_network_header (TYPE_1__*) ;

GList *network_mysqld_proto_get_fielddefs(GList *chunk, GPtrArray *fields) {
 network_packet packet;
 guint64 field_count;
 guint i;
 int err = 0;
 guint32 capabilities = CLIENT_PROTOCOL_41;
 network_mysqld_lenenc_type lenenc_type;

 packet.data = chunk->data;
 packet.offset = 0;

 err = err || network_mysqld_proto_skip_network_header(&packet);

 err = err || network_mysqld_proto_peek_lenenc_type(&packet, &lenenc_type);

 if (err) return ((void*)0);


 switch (lenenc_type) {
 case 128:
  break;
 default:

  return ((void*)0);
 }

 err = err || network_mysqld_proto_get_lenenc_int(&packet, &field_count);

 if (err) return ((void*)0);

 if (field_count == 0) {

  return ((void*)0);
 }


 for (i = 0; i < field_count; i++) {
  network_mysqld_proto_fielddef_t *field;

  chunk = chunk->next;
  g_assert(chunk);

  packet.data = chunk->data;
  packet.offset = 0;

  field = network_mysqld_proto_fielddef_new();

  err = err || network_mysqld_proto_skip_network_header(&packet);
  err = err || network_mysqld_proto_get_fielddef(&packet, field, capabilities);

  g_ptr_array_add(fields, field);

  if (err) return ((void*)0);
 }


 chunk = chunk->next;

 if (!chunk) return ((void*)0);

 packet.data = chunk->data;
 packet.offset = 0;

 err = err || network_mysqld_proto_skip_network_header(&packet);

 err = err || network_mysqld_proto_peek_lenenc_type(&packet, &lenenc_type);
 err = err || (lenenc_type != NETWORK_MYSQLD_LENENC_TYPE_EOF);

 if (err) return ((void*)0);

 return chunk;
}
