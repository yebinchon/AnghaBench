
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_err_packet_t ;


 int NETWORK_MYSQLD_PROTOCOL_VERSION_PRE41 ;
 int * network_mysqld_err_packet_new_full (int ) ;

network_mysqld_err_packet_t *network_mysqld_err_packet_new_pre41() {
 return network_mysqld_err_packet_new_full(NETWORK_MYSQLD_PROTOCOL_VERSION_PRE41);
}
