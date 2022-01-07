
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int send_queue; } ;
typedef TYPE_1__ network_socket ;
struct TYPE_11__ {int sqlstate; int errmsg; int errcode; } ;
typedef TYPE_2__ network_mysqld_err_packet_t ;
typedef int guint ;
typedef int gsize ;
typedef char gchar ;
typedef scalar_t__ gboolean ;
typedef int GString ;


 int S (int *) ;
 int TRUE ;
 int g_string_assign_len (int ,char const*,int ) ;
 int g_string_free (int *,int ) ;
 int * g_string_sized_new (int ) ;
 int network_mysqld_err_packet_free (TYPE_2__*) ;
 TYPE_2__* network_mysqld_err_packet_new () ;
 TYPE_2__* network_mysqld_err_packet_new_pre41 () ;
 int network_mysqld_proto_append_err_packet (int *,TYPE_2__*) ;
 int network_mysqld_queue_append (TYPE_1__*,int ,int ) ;
 int network_mysqld_queue_reset (TYPE_1__*) ;
 int strlen (char const*) ;

__attribute__((used)) static int network_mysqld_con_send_error_full_all(network_socket *con,
  const char *errmsg, gsize errmsg_len,
  guint errorcode,
  const gchar *sqlstate,
  gboolean is_41_protocol) {
 GString *packet;
 network_mysqld_err_packet_t *err_packet;

 packet = g_string_sized_new(10 + errmsg_len);

 err_packet = is_41_protocol ? network_mysqld_err_packet_new() : network_mysqld_err_packet_new_pre41();
 err_packet->errcode = errorcode;
 if (errmsg) g_string_assign_len(err_packet->errmsg, errmsg, errmsg_len);
 if (sqlstate) g_string_assign_len(err_packet->sqlstate, sqlstate, strlen(sqlstate));

 network_mysqld_proto_append_err_packet(packet, err_packet);

 network_mysqld_queue_append(con, con->send_queue, S(packet));
 network_mysqld_queue_reset(con);

 network_mysqld_err_packet_free(err_packet);
 g_string_free(packet, TRUE);

 return 0;
}
