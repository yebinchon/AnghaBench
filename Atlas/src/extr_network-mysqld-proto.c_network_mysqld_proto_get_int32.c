
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;
typedef int guint64 ;
typedef int guint32 ;


 scalar_t__ network_mysqld_proto_get_int_len (int *,int*,int) ;

int network_mysqld_proto_get_int32(network_packet *packet, guint32 *v) {
 guint64 v64;

 if (network_mysqld_proto_get_int_len(packet, &v64, 4)) return -1;

 *v = v64 & 0xffffffff;

 return 0;
}
