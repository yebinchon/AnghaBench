
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
struct TYPE_20__ {int server_status; int insert_id; int affected_rows; int warnings; } ;
typedef TYPE_3__ network_mysqld_ok_packet_t ;
struct TYPE_21__ {int server_status; int warnings; } ;
typedef TYPE_4__ network_mysqld_eof_packet_t ;
typedef int network_mysqld_con ;
struct TYPE_22__ {int state; int query_status; int server_status; int was_resultset; int bytes; int rows; int warning_count; int binary_encoded; int insert_id; int affected_rows; } ;
typedef TYPE_5__ network_mysqld_com_query_result_t ;
typedef int guint8 ;
typedef int gboolean ;
struct TYPE_18__ {int len; } ;


 int G_STRLOC ;
 int SERVER_MORE_RESULTS_EXISTS ;
 int SERVER_PS_OUT_PARAMS ;
 int SERVER_STATUS_CURSOR_EXISTS ;
 int g_critical (char*,int ,int ) ;
 int network_mysqld_eof_packet_free (TYPE_4__*) ;
 TYPE_4__* network_mysqld_eof_packet_new () ;
 int network_mysqld_ok_packet_free (TYPE_3__*) ;
 TYPE_3__* network_mysqld_ok_packet_new () ;
 int network_mysqld_proto_get_eof_packet (TYPE_2__*,TYPE_4__*) ;
 int network_mysqld_proto_get_int8 (TYPE_2__*,int *) ;
 int network_mysqld_proto_get_ok_packet (TYPE_2__*,TYPE_3__*) ;
 int network_mysqld_proto_peek_int8 (TYPE_2__*,int *) ;
 int update_charset (int *) ;

int network_mysqld_proto_get_com_query_result(network_packet *packet, network_mysqld_com_query_result_t *query, network_mysqld_con *con, gboolean use_binary_row_data) {
 int is_finished = 0;
 guint8 status;
 int err = 0;
 network_mysqld_eof_packet_t *eof_packet;
 network_mysqld_ok_packet_t *ok_packet;




 switch (query->state) {
 case 131:
  err = err || network_mysqld_proto_peek_int8(packet, &status);
  if (err) break;

  switch (status) {
  case 135:
   query->query_status = 135;
   is_finished = 1;
   break;
  case 133:




   update_charset(con);
   query->query_status = 133;

   ok_packet = network_mysqld_ok_packet_new();

   err = err || network_mysqld_proto_get_ok_packet(packet, ok_packet);

   if (!err) {
    if (ok_packet->server_status & SERVER_MORE_RESULTS_EXISTS) {

    } else {
     is_finished = 1;
    }

    query->server_status = ok_packet->server_status;
    query->warning_count = ok_packet->warnings;
    query->affected_rows = ok_packet->affected_rows;
    query->insert_id = ok_packet->insert_id;
    query->was_resultset = 0;
    query->binary_encoded= use_binary_row_data;
   }

   network_mysqld_ok_packet_free(ok_packet);

   break;
  case 134:

   query->state = 130;
   is_finished = 1;

   break;
  case 136:
   g_critical("%s: COM_QUERY packet should not be (EOF), got: 0x%02x",
     G_STRLOC,
     status);

   err = 1;

   break;
  default:
   query->query_status = 133;

   query->state = 132;
   break;
  }
  break;
 case 132:
  err = err || network_mysqld_proto_peek_int8(packet, &status);
  if (err) break;

  switch (status) {
  case 135:
  case 133:
  case 134:
   g_critical("%s: COM_QUERY should not be (OK|NULL|ERR), got: 0x%02x",
     G_STRLOC,
     status);

   err = 1;

   break;
  case 136:





   if (packet->data->len == 9) {
    eof_packet = network_mysqld_eof_packet_new();

    err = err || network_mysqld_proto_get_eof_packet(packet, eof_packet);

    if (!err) {
     query->state = 128;


     query->server_status = eof_packet->server_status;
    }

    network_mysqld_eof_packet_free(eof_packet);
   } else {
    query->state = 128;
   }
   break;
  default:
   break;
  }
  break;
 case 128:
  err = err || network_mysqld_proto_peek_int8(packet, &status);
  if (err) break;

  switch (status) {
  case 136:
   if (packet->data->len == 9) {
    eof_packet = network_mysqld_eof_packet_new();

    err = err || network_mysqld_proto_get_eof_packet(packet, eof_packet);

    if (!err) {
     query->was_resultset = 1;
     if (!(query->server_status & 4096)) {
      query->server_status = eof_packet->server_status;
     }
     query->warning_count = eof_packet->warnings;

     if (query->server_status & SERVER_MORE_RESULTS_EXISTS) {
      query->state = 131;
     } else {
      is_finished = 1;
     }
    }

    network_mysqld_eof_packet_free(eof_packet);
   }

   break;
  case 135:






   is_finished = 1;
   break;
  case 133:
  case 134:
   if (use_binary_row_data) {



   } else {

    break;
   }
  default:
   query->rows++;
   query->bytes += packet->data->len;
   break;
  }
  break;
 case 130:

  if (packet->data->len == packet->offset) {
   query->state = 129;
   is_finished = 1;
  }
  break;
 case 129:
  err = err || network_mysqld_proto_get_int8(packet, &status);
  if (err) break;

  switch (status) {
  case 133:
   is_finished = 1;
   break;
  case 134:
  case 135:
  case 136:
  default:
   g_critical("%s: COM_QUERY,should be (OK), got: 0x%02x",
     G_STRLOC,
     status);

   err = 1;

   break;
  }

  break;
 }

 if (err) return -1;

 return is_finished;
}
