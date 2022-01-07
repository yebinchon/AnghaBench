
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
struct TYPE_11__ {int * db_name; } ;
typedef TYPE_3__ network_mysqld_com_init_db_result_t ;
struct TYPE_9__ {scalar_t__ len; } ;


 int TRUE ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int network_mysqld_proto_get_gstring_len (TYPE_2__*,scalar_t__,int *) ;
 int network_mysqld_proto_skip (TYPE_2__*,int) ;
 int network_mysqld_proto_skip_network_header (TYPE_2__*) ;

int network_mysqld_com_init_db_result_track_state(network_packet *packet, network_mysqld_com_init_db_result_t *udata) {
 network_mysqld_proto_skip_network_header(packet);
 network_mysqld_proto_skip(packet, 1);

 if (packet->offset != packet->data->len) {
  udata->db_name = g_string_new(((void*)0));

  network_mysqld_proto_get_gstring_len(packet, packet->data->len - packet->offset, udata->db_name);
 } else {
  if (udata->db_name) g_string_free(udata->db_name, TRUE);
  udata->db_name = ((void*)0);
 }

 return 0;
}
