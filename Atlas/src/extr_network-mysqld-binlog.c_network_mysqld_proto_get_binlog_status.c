
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;
typedef scalar_t__ guint8 ;


 int g_return_val_if_fail (int,int) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,scalar_t__*) ;

int network_mysqld_proto_get_binlog_status(network_packet *packet) {
 guint8 ok;


 if (0 != network_mysqld_proto_get_int8(packet, &ok)) {
  return -1;
 }
 g_return_val_if_fail(ok == 0, -1);

 return 0;
}
