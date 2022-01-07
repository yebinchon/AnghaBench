
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;


 int g_free (int *) ;

void network_packet_free(network_packet *packet) {
 if (!packet) return;

 g_free(packet);
}
