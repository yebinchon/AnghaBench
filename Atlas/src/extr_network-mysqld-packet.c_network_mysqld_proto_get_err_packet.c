
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
struct TYPE_11__ {int sqlstate; int errmsg; int errcode; } ;
typedef TYPE_3__ network_mysqld_err_packet_t ;
typedef scalar_t__ guint8 ;
typedef int guint32 ;
typedef int guint16 ;
typedef int gchar ;
struct TYPE_9__ {scalar_t__ len; } ;


 int CLIENT_PROTOCOL_41 ;
 int G_STRLOC ;
 scalar_t__ MYSQLD_PACKET_ERR ;
 int g_critical (char*,int ,scalar_t__) ;
 int g_free (int *) ;
 int g_string_assign (int ,int *) ;
 scalar_t__ network_mysqld_proto_get_int16 (TYPE_2__*,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (TYPE_2__*,scalar_t__*) ;
 scalar_t__ network_mysqld_proto_get_string_len (TYPE_2__*,int **,int) ;

int network_mysqld_proto_get_err_packet(network_packet *packet, network_mysqld_err_packet_t *err_packet) {
 guint8 field_count, marker;
 guint16 errcode;
 gchar *sqlstate = ((void*)0), *errmsg = ((void*)0);
 guint32 capabilities = CLIENT_PROTOCOL_41;

 int err = 0;

 err = err || network_mysqld_proto_get_int8(packet, &field_count);
 if (err) return -1;

 if (field_count != MYSQLD_PACKET_ERR) {
  g_critical("%s: expected the first byte to be 0xff, got %d",
    G_STRLOC,
    field_count);
  return -1;
 }

 err = err || network_mysqld_proto_get_int16(packet, &errcode);
 if (capabilities & CLIENT_PROTOCOL_41) {
  err = err || network_mysqld_proto_get_int8(packet, &marker);
  err = err || (marker != '#');
  err = err || network_mysqld_proto_get_string_len(packet, &sqlstate, 5);
 }
 if (packet->offset < packet->data->len) {
  err = err || network_mysqld_proto_get_string_len(packet, &errmsg, packet->data->len - packet->offset);
 }

 if (!err) {
  err_packet->errcode = errcode;
  if (errmsg) g_string_assign(err_packet->errmsg, errmsg);
  g_string_assign(err_packet->sqlstate, sqlstate);
 }

 if (sqlstate) g_free(sqlstate);
 if (errmsg) g_free(errmsg);

 return err ? -1 : 0;
}
