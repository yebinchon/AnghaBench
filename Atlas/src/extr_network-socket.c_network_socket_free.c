
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; int charset_results; int charset_connection; int charset_client; int default_db; int event; int src; int dst; scalar_t__ challenge; scalar_t__ response; int recv_queue_raw; int recv_queue; int send_queue; } ;
typedef TYPE_1__ network_socket ;


 int TRUE ;
 int closesocket (int) ;
 int event_del (int *) ;
 int g_free (TYPE_1__*) ;
 int g_string_free (int ,int ) ;
 int network_address_free (int ) ;
 int network_mysqld_auth_challenge_free (scalar_t__) ;
 int network_mysqld_auth_response_free (scalar_t__) ;
 int network_queue_free (int ) ;

void network_socket_free(network_socket *s) {
 if (!s) return;

 network_queue_free(s->send_queue);
 network_queue_free(s->recv_queue);
 network_queue_free(s->recv_queue_raw);

 if (s->response) network_mysqld_auth_response_free(s->response);
 if (s->challenge) network_mysqld_auth_challenge_free(s->challenge);

 network_address_free(s->dst);
 network_address_free(s->src);

 event_del(&(s->event));

 if (s->fd != -1) {
  closesocket(s->fd);
 }

 g_string_free(s->default_db, TRUE);
 g_string_free(s->charset_client, TRUE);
 g_string_free(s->charset_connection, TRUE);
 g_string_free(s->charset_results, TRUE);

 g_free(s);
}
