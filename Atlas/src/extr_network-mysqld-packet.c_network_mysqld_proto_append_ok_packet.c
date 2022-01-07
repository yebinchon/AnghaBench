
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int warnings; int server_status; int insert_id; int affected_rows; } ;
typedef TYPE_1__ network_mysqld_ok_packet_t ;
typedef int guint32 ;
typedef int GString ;


 int CLIENT_PROTOCOL_41 ;
 int network_mysqld_proto_append_int16 (int *,int ) ;
 int network_mysqld_proto_append_int8 (int *,int ) ;
 int network_mysqld_proto_append_lenenc_int (int *,int ) ;

int network_mysqld_proto_append_ok_packet(GString *packet, network_mysqld_ok_packet_t *ok_packet) {
 guint32 capabilities = CLIENT_PROTOCOL_41;

 network_mysqld_proto_append_int8(packet, 0);
 network_mysqld_proto_append_lenenc_int(packet, ok_packet->affected_rows);
 network_mysqld_proto_append_lenenc_int(packet, ok_packet->insert_id);
 network_mysqld_proto_append_int16(packet, ok_packet->server_status);
 if (capabilities & CLIENT_PROTOCOL_41) {
  network_mysqld_proto_append_int16(packet, ok_packet->warnings);
 }

 return 0;
}
