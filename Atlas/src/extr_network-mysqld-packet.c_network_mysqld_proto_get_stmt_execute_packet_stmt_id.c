
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;
typedef scalar_t__ guint8 ;
typedef int guint32 ;


 scalar_t__ COM_STMT_EXECUTE ;
 int G_STRLOC ;
 int g_critical (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,scalar_t__*) ;

int network_mysqld_proto_get_stmt_execute_packet_stmt_id(network_packet *packet,
  guint32 *stmt_id) {
 guint8 packet_type;
 int err = 0;

 err = err || network_mysqld_proto_get_int8(packet, &packet_type);
 if (err) return -1;

 if (COM_STMT_EXECUTE != packet_type) {
  g_critical("%s: expected the first byte to be %02x, got %02x",
    G_STRLOC,
    COM_STMT_EXECUTE,
    packet_type);
  return -1;
 }

 err = err || network_mysqld_proto_get_int32(packet, stmt_id);

 return err ? -1 : 0;
}
