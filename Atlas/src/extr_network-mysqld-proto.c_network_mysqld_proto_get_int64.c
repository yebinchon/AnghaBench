
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;
typedef int guint64 ;


 int network_mysqld_proto_get_int_len (int *,int *,int) ;

int network_mysqld_proto_get_int64(network_packet *packet, guint64 *v) {
 return network_mysqld_proto_get_int_len(packet, v, 8);
}
