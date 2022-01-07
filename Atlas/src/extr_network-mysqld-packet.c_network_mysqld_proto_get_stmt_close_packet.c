
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_packet ;
struct TYPE_3__ {int stmt_id; } ;
typedef TYPE_1__ network_mysqld_stmt_close_packet_t ;
typedef scalar_t__ guint8 ;


 scalar_t__ COM_STMT_CLOSE ;
 int G_STRLOC ;
 int g_critical (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,scalar_t__*) ;

int network_mysqld_proto_get_stmt_close_packet(network_packet *packet, network_mysqld_stmt_close_packet_t *stmt_close_packet) {
 guint8 packet_type;
 int err = 0;

 err = err || network_mysqld_proto_get_int8(packet, &packet_type);
 if (err) return -1;

 if (COM_STMT_CLOSE != packet_type) {
  g_critical("%s: expected the first byte to be %02x, got %02x",
    G_STRLOC,
    COM_STMT_CLOSE,
    packet_type);
  return -1;
 }

 err = err || network_mysqld_proto_get_int32(packet, &stmt_close_packet->stmt_id);

 return err ? -1 : 0;
}
