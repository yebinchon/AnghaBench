
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int send_queue; } ;
typedef TYPE_1__ network_socket ;
struct TYPE_10__ {void* warnings; void* server_status; void* insert_id; void* affected_rows; } ;
typedef TYPE_2__ network_mysqld_ok_packet_t ;
typedef void* guint64 ;
typedef void* guint16 ;
typedef int GString ;


 int S (int *) ;
 int TRUE ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 int network_mysqld_ok_packet_free (TYPE_2__*) ;
 TYPE_2__* network_mysqld_ok_packet_new () ;
 int network_mysqld_proto_append_ok_packet (int *,TYPE_2__*) ;
 int network_mysqld_queue_append (TYPE_1__*,int ,int ) ;
 int network_mysqld_queue_reset (TYPE_1__*) ;

int network_mysqld_con_send_ok_full(network_socket *con, guint64 affected_rows, guint64 insert_id, guint16 server_status, guint16 warnings ) {
 GString *packet = g_string_new(((void*)0));
 network_mysqld_ok_packet_t *ok_packet;

 ok_packet = network_mysqld_ok_packet_new();
 ok_packet->affected_rows = affected_rows;
 ok_packet->insert_id = insert_id;
 ok_packet->server_status = server_status;
 ok_packet->warnings = warnings;

 network_mysqld_proto_append_ok_packet(packet, ok_packet);

 network_mysqld_queue_append(con, con->send_queue, S(packet));
 network_mysqld_queue_reset(con);

 g_string_free(packet, TRUE);
 network_mysqld_ok_packet_free(ok_packet);

 return 0;
}
