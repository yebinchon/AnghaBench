
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_packet ;
struct TYPE_3__ {void* warnings; void* num_params; void* num_columns; int stmt_id; } ;
typedef TYPE_1__ network_mysqld_stmt_prepare_ok_packet_t ;
typedef int guint8 ;
typedef int guint32 ;
typedef void* guint16 ;


 int G_STRLOC ;
 int g_critical (char*,int ,int,int) ;
 scalar_t__ network_mysqld_proto_get_int16 (int *,void**) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,int*) ;
 scalar_t__ network_mysqld_proto_skip (int *,int) ;

int network_mysqld_proto_get_stmt_prepare_ok_packet(network_packet *packet, network_mysqld_stmt_prepare_ok_packet_t *stmt_prepare_ok_packet) {
 guint8 packet_type;
 guint16 num_columns;
 guint16 num_params;
 guint16 warnings;
 guint32 stmt_id;

 int err = 0;

 err = err || network_mysqld_proto_get_int8(packet, &packet_type);
 if (err) return -1;

 if (0x00 != packet_type) {
  g_critical("%s: expected the first byte to be %02x, got %02x",
    G_STRLOC,
    0x00,
    packet_type);
  return -1;
 }
 err = err || network_mysqld_proto_get_int32(packet, &stmt_id);
 err = err || network_mysqld_proto_get_int16(packet, &num_columns);
 err = err || network_mysqld_proto_get_int16(packet, &num_params);
 err = err || network_mysqld_proto_skip(packet, 1);
 err = err || network_mysqld_proto_get_int16(packet, &warnings);

 if (!err) {
  stmt_prepare_ok_packet->stmt_id = stmt_id;
  stmt_prepare_ok_packet->num_columns = num_columns;
  stmt_prepare_ok_packet->num_params = num_params;
  stmt_prepare_ok_packet->warnings = warnings;
 }

 return err ? -1 : 0;
}
