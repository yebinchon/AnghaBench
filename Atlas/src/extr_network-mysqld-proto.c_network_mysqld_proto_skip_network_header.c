
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;


 int NET_HEADER_SIZE ;
 int network_mysqld_proto_skip (int *,int ) ;

int network_mysqld_proto_skip_network_header(network_packet *packet) {
 return network_mysqld_proto_skip(packet, NET_HEADER_SIZE);
}
