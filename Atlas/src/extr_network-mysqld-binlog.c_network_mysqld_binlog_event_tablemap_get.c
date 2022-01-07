
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ offset; TYPE_7__* data; } ;
typedef TYPE_3__ network_packet ;
struct TYPE_17__ {int fields; int table_id; int table_name; int db_name; } ;
typedef TYPE_4__ network_mysqld_table ;
struct TYPE_14__ {scalar_t__ metadata_len; int columns_len; int* null_bits; scalar_t__* metadata; scalar_t__* columns; int table_id; int table_name; int db_name; } ;
struct TYPE_15__ {TYPE_1__ table_map_event; } ;
struct TYPE_18__ {TYPE_2__ event; } ;
typedef TYPE_5__ network_mysqld_binlog_event ;
typedef int guint8 ;
typedef int guint16 ;
typedef int guint ;
typedef int guchar ;
typedef enum enum_field_types { ____Placeholder_enum_field_types } enum_field_types ;
struct TYPE_20__ {scalar_t__ len; scalar_t__* str; } ;
struct TYPE_19__ {int max_length; int type; int decimals; int flags; } ;
typedef TYPE_6__ MYSQL_FIELD ;
typedef TYPE_7__ GString ;


 int G_STRLOC ;
 int MYSQL_TYPE_LONG_BLOB ;
 int MYSQL_TYPE_MEDIUM_BLOB ;






 int const MYSQL_TYPE_TINY_BLOB ;



 int NOT_NULL_FLAG ;
 int g_assert_not_reached () ;
 int g_critical (char*,int ) ;
 int g_debug_hexdump (int ,scalar_t__*,int) ;
 int g_error (char*,int ,int) ;
 int g_ptr_array_add (int ,TYPE_6__*) ;
 int g_string_assign (int ,int ) ;
 TYPE_6__* network_mysqld_proto_fielddef_new () ;
 int network_mysqld_proto_get_int16 (TYPE_3__*,int*) ;
 int network_mysqld_proto_get_int8 (TYPE_3__*,int*) ;

int network_mysqld_binlog_event_tablemap_get(
  network_mysqld_binlog_event *event,
  network_mysqld_table *tbl) {

 network_packet metadata_packet;
 GString row;
 guint i;
 int err = 0;

 g_string_assign(tbl->db_name, event->event.table_map_event.db_name);
 g_string_assign(tbl->table_name, event->event.table_map_event.table_name);

 tbl->table_id = event->event.table_map_event.table_id;

 row.str = event->event.table_map_event.metadata;
 row.len = event->event.table_map_event.metadata_len;

 metadata_packet.data = &row;
 metadata_packet.offset = 0;


 for (i = 0; i < event->event.table_map_event.columns_len; i++) {
  MYSQL_FIELD *field = network_mysqld_proto_fielddef_new();
  enum enum_field_types col_type;
  guint8 byte0, byte1;
  guint16 varchar_length;

  guint byteoffset = i / 8;
  guint bitoffset = i % 8;

  field->flags |= (event->event.table_map_event.null_bits[byteoffset] >> bitoffset) & 0x1 ? 0 : NOT_NULL_FLAG;

  col_type = (enum enum_field_types)event->event.table_map_event.columns[i];







  switch ((guchar)col_type) {
  case 134:
   err = err || network_mysqld_proto_get_int8(&metadata_packet,
     &byte0);
   err = err || network_mysqld_proto_get_int8(&metadata_packet,
     &byte1);
   if (!err) {
    if ((byte0 & 0x30) != 0x30) {

     field->max_length |= (((byte0 & 0x30) ^ 0x30) << 4);
     field->type = byte0 | 0x30;
    } else {
     field->max_length = byte1;
     field->type = byte0;
    }
   }

   break;
  case 130:
  case 129:


   err = err || network_mysqld_proto_get_int16(&metadata_packet, &varchar_length);

   if (!err) {
    field->type = col_type;
    field->max_length = varchar_length;
   }
   break;
  case 140:
  case 147:

   err = err || network_mysqld_proto_get_int8(&metadata_packet, &byte0);

   if (!err) {
    field->type = (guchar)col_type;
    field->max_length = byte0;


    if (field->type == 147) {
     switch (field->max_length) {
     case 1:
      field->type = MYSQL_TYPE_TINY_BLOB;
      break;
     case 2:
      field->type = 147;
      break;
     case 3:
      field->type = MYSQL_TYPE_MEDIUM_BLOB;
      break;
     case 4:
      field->type = MYSQL_TYPE_LONG_BLOB;
      break;
     default:
      err = 1;
      break;
     }
    } else if (field->type == 140) {
     if (field->max_length != 4) {
      err = 1;
     }
    } else {
     g_assert_not_reached();
    }
   }

   break;
  case 136:
   field->type = col_type;




   err = err || network_mysqld_proto_get_int8(&metadata_packet, &byte0);
   err = err || network_mysqld_proto_get_int8(&metadata_packet, &byte1);

   if (!err) {
    field->max_length = byte0;
    field->decimals = byte1;
   }
   break;
  case 143:
  case 141:

   err = err || network_mysqld_proto_get_int8(&metadata_packet, &byte0);

   if (!err) {
    field->type = col_type;
    field->max_length = byte0;
   }
   break;
  case 142:



   err = err || network_mysqld_proto_get_int8(&metadata_packet, &byte0);
   err = err || network_mysqld_proto_get_int8(&metadata_packet, &byte1);

   if (!err) {
    field->type = byte0;
    field->max_length = byte1;
   }
   break;
  case 148:




   field->type = col_type;

   err = err || network_mysqld_proto_get_int8(&metadata_packet, &byte0);
   err = err || network_mysqld_proto_get_int8(&metadata_packet, &byte1);

   if (!err) {
    field->max_length = byte1 + (byte0 == 0 ? 0 : 1);
   }

   break;


  case 144:
  case 146:
  case 145:
  case 133:
  case 132:
  case 128:

  case 131:
  case 135:
  case 139:
  case 138:
  case 137:
   field->type = col_type;
   break;
  default:
   g_error("%s: field-type %d isn't handled",
     G_STRLOC,
     col_type
     );
   break;
  }

  g_ptr_array_add(tbl->fields, field);
 }

 if (metadata_packet.offset != metadata_packet.data->len) {
  g_debug_hexdump(G_STRLOC, event->event.table_map_event.columns, event->event.table_map_event.columns_len);
  g_debug_hexdump(G_STRLOC, event->event.table_map_event.metadata, event->event.table_map_event.metadata_len);
 }
 if (metadata_packet.offset != metadata_packet.data->len) {
  g_critical("%s: ",
    G_STRLOC);
  err = 1;
 }

 return err ? -1 : 0;
}
