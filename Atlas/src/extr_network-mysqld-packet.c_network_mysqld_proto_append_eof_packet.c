
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int server_status; int warnings; } ;
typedef TYPE_1__ network_mysqld_eof_packet_t ;
typedef int guint32 ;
typedef int GString ;


 int CLIENT_PROTOCOL_41 ;
 int MYSQLD_PACKET_EOF ;
 int network_mysqld_proto_append_int16 (int *,int ) ;
 int network_mysqld_proto_append_int8 (int *,int ) ;

int network_mysqld_proto_append_eof_packet(GString *packet, network_mysqld_eof_packet_t *eof_packet) {
 guint32 capabilities = CLIENT_PROTOCOL_41;

 network_mysqld_proto_append_int8(packet, MYSQLD_PACKET_EOF);
 if (capabilities & CLIENT_PROTOCOL_41) {
  network_mysqld_proto_append_int16(packet, eof_packet->warnings);
  network_mysqld_proto_append_int16(packet, eof_packet->server_status);
 }

 return 0;
}
