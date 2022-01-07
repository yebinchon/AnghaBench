
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_18__ {scalar_t__ offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
struct TYPE_19__ {int capabilities; int max_packet_size; int response; int username; TYPE_12__* database; int charset; } ;
typedef TYPE_3__ network_mysqld_auth_response ;
typedef int guint16 ;
struct TYPE_17__ {scalar_t__ len; } ;
struct TYPE_16__ {int len; char* str; } ;


 int CLIENT_PROTOCOL_41 ;
 int CLIENT_SECURE_CONNECTION ;
 scalar_t__ network_mysqld_proto_get_gstring (TYPE_2__*,int ) ;
 scalar_t__ network_mysqld_proto_get_gstring_len (TYPE_2__*,scalar_t__,TYPE_12__*) ;
 scalar_t__ network_mysqld_proto_get_int16 (TYPE_2__*,int*) ;
 scalar_t__ network_mysqld_proto_get_int24 (TYPE_2__*,int*) ;
 scalar_t__ network_mysqld_proto_get_int32 (TYPE_2__*,int*) ;
 scalar_t__ network_mysqld_proto_get_int8 (TYPE_2__*,int *) ;
 scalar_t__ network_mysqld_proto_get_lenenc_gstring (TYPE_2__*,int ) ;
 scalar_t__ network_mysqld_proto_peek_int16 (TYPE_2__*,int*) ;
 scalar_t__ network_mysqld_proto_skip (TYPE_2__*,int) ;

int network_mysqld_proto_get_auth_response(network_packet *packet, network_mysqld_auth_response *auth) {
 int err = 0;
 guint16 l_cap;
 err = err || network_mysqld_proto_peek_int16(packet, &l_cap);
 if (err) return -1;

 if (l_cap & CLIENT_PROTOCOL_41) {
  err = err || network_mysqld_proto_get_int32(packet, &auth->capabilities);
  err = err || network_mysqld_proto_get_int32(packet, &auth->max_packet_size);
  err = err || network_mysqld_proto_get_int8(packet, &auth->charset);

  err = err || network_mysqld_proto_skip(packet, 23);

  err = err || network_mysqld_proto_get_gstring(packet, auth->username);
  if (auth->capabilities & CLIENT_SECURE_CONNECTION) {
   err = err || network_mysqld_proto_get_lenenc_gstring(packet, auth->response);
  } else {
   err = err || network_mysqld_proto_get_gstring(packet, auth->response);
  }

  if (packet->offset != packet->data->len) {

   err = err || network_mysqld_proto_get_gstring_len(packet, packet->data->len - packet->offset, auth->database);

   if (auth->database->len > 0 &&
       (auth->database->str[auth->database->len - 1] == '\0')) {
    auth->database->len--;
   }
  }
 } else {
  err = err || network_mysqld_proto_get_int16(packet, &l_cap);
  err = err || network_mysqld_proto_get_int24(packet, &auth->max_packet_size);
  err = err || network_mysqld_proto_get_gstring(packet, auth->username);

  if (packet->data->len != packet->offset) {
   err = err || network_mysqld_proto_get_gstring(packet, auth->response);
  }

  if (!err) {
   auth->capabilities = l_cap;
  }
 }

 return err ? -1 : 0;
}
