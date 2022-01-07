
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;
typedef int guint64 ;


 scalar_t__ network_mysqld_proto_get_int_len (int *,int *,int) ;

int network_mysqld_proto_get_int48(network_packet *packet, guint64 *v) {
 guint64 v64;

 if (network_mysqld_proto_get_int_len(packet, &v64, 6)) return -1;

 *v = v64;

 return 0;
}
