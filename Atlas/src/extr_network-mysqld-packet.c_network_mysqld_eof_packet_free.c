
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_eof_packet_t ;


 int g_free (int *) ;

void network_mysqld_eof_packet_free(network_mysqld_eof_packet_t *eof_packet) {
 if (!eof_packet) return;

 g_free(eof_packet);
}
