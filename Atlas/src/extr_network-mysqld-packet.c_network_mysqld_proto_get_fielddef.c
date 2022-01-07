
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_packet ;
struct TYPE_3__ {int charsetnr; int length; int type; int flags; int decimals; int name; int table; int org_name; int org_table; int db; int catalog; } ;
typedef TYPE_1__ network_mysqld_proto_fielddef_t ;
typedef int guint8 ;
typedef int guint32 ;
typedef void* guint16 ;


 int CLIENT_PROTOCOL_41 ;
 scalar_t__ network_mysqld_proto_get_int16 (int *,void**) ;
 scalar_t__ network_mysqld_proto_get_int24 (int *,int*) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int*) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,int*) ;
 scalar_t__ network_mysqld_proto_get_lenenc_string (int *,int *,int *) ;
 scalar_t__ network_mysqld_proto_skip (int *,int) ;

int network_mysqld_proto_get_fielddef(network_packet *packet, network_mysqld_proto_fielddef_t *field, guint32 capabilities) {
 int err = 0;

 if (capabilities & CLIENT_PROTOCOL_41) {
  guint16 field_charsetnr;
  guint32 field_length;
  guint8 field_type;
  guint16 field_flags;
  guint8 field_decimals;

  err = err || network_mysqld_proto_get_lenenc_string(packet, &field->catalog, ((void*)0));
  err = err || network_mysqld_proto_get_lenenc_string(packet, &field->db, ((void*)0));
  err = err || network_mysqld_proto_get_lenenc_string(packet, &field->table, ((void*)0));
  err = err || network_mysqld_proto_get_lenenc_string(packet, &field->org_table, ((void*)0));
  err = err || network_mysqld_proto_get_lenenc_string(packet, &field->name, ((void*)0));
  err = err || network_mysqld_proto_get_lenenc_string(packet, &field->org_name, ((void*)0));

  err = err || network_mysqld_proto_skip(packet, 1);

  err = err || network_mysqld_proto_get_int16(packet, &field_charsetnr);
  err = err || network_mysqld_proto_get_int32(packet, &field_length);
  err = err || network_mysqld_proto_get_int8(packet, &field_type);
  err = err || network_mysqld_proto_get_int16(packet, &field_flags);
  err = err || network_mysqld_proto_get_int8(packet, &field_decimals);

  err = err || network_mysqld_proto_skip(packet, 2);
  if (!err) {
   field->charsetnr = field_charsetnr;
   field->length = field_length;
   field->type = field_type;
   field->flags = field_flags;
   field->decimals = field_decimals;
  }
 } else {
  guint8 len;
  guint32 field_length;
  guint8 field_type;
  guint8 field_decimals;



  err = err || network_mysqld_proto_get_lenenc_string(packet, &field->table, ((void*)0));
  err = err || network_mysqld_proto_get_lenenc_string(packet, &field->name, ((void*)0));
  err = err || network_mysqld_proto_get_int8(packet, &len);
  err = err || (len != 3);
  err = err || network_mysqld_proto_get_int24(packet, &field_length);
  err = err || network_mysqld_proto_get_int8(packet, &len);
  err = err || (len != 1);
  err = err || network_mysqld_proto_get_int8(packet, &field_type);
  err = err || network_mysqld_proto_get_int8(packet, &len);
  if (len == 3) {
   guint16 field_flags;

   err = err || network_mysqld_proto_get_int16(packet, &field_flags);

   if (!err) field->flags = field_flags;
  } else if (len == 2) {
   guint8 field_flags;

   err = err || network_mysqld_proto_get_int8(packet, &field_flags);

   if (!err) field->flags = field_flags;
  } else {
   err = -1;
  }
  err = err || network_mysqld_proto_get_int8(packet, &field_decimals);

  if (!err) {
   field->charsetnr = 0x08 ;
   field->length = field_length;
   field->type = field_type;
   field->decimals = field_decimals;
  }
 }

 return err ? -1 : 0;
}
