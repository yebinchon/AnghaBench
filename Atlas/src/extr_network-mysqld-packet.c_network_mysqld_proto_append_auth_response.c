
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int capabilities; int max_packet_size; int charset; TYPE_3__* database; TYPE_3__* response; TYPE_3__* username; } ;
typedef TYPE_1__ network_mysqld_auth_response ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef int GString ;


 int CLIENT_PROTOCOL_41 ;
 int S (TYPE_3__*) ;
 int g_string_append_len (int *,int ) ;
 int network_mysqld_proto_append_int16 (int *,int) ;
 int network_mysqld_proto_append_int24 (int *,int) ;
 int network_mysqld_proto_append_int32 (int *,int) ;
 int network_mysqld_proto_append_int8 (int *,int) ;
 int network_mysqld_proto_append_lenenc_string_len (int *,int ) ;

int network_mysqld_proto_append_auth_response(GString *packet, network_mysqld_auth_response *auth) {
 int i;

 if (!(auth->capabilities & CLIENT_PROTOCOL_41)) {
  network_mysqld_proto_append_int16(packet, auth->capabilities);
  network_mysqld_proto_append_int24(packet, auth->max_packet_size);

  if (auth->username->len) g_string_append_len(packet, S(auth->username));
  network_mysqld_proto_append_int8(packet, 0x00);

  if (auth->response->len) {
   g_string_append_len(packet, S(auth->response));
   network_mysqld_proto_append_int8(packet, 0x00);
  }
 } else {
  network_mysqld_proto_append_int32(packet, auth->capabilities);
  network_mysqld_proto_append_int32(packet, auth->max_packet_size);

  network_mysqld_proto_append_int8(packet, auth->charset);

  for (i = 0; i < 23; i++) {
   network_mysqld_proto_append_int8(packet, 0x00);
  }

  if (auth->username->len) g_string_append_len(packet, S(auth->username));
  network_mysqld_proto_append_int8(packet, 0x00);


  network_mysqld_proto_append_lenenc_string_len(packet, S(auth->response));
  if (auth->database->len) {
   g_string_append_len(packet, S(auth->database));
   network_mysqld_proto_append_int8(packet, 0x00);
  }
 }

 return 0;
}
