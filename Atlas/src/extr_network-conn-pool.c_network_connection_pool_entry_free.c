
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int event; } ;
typedef TYPE_1__ network_socket ;
struct TYPE_7__ {TYPE_1__* sock; } ;
typedef TYPE_2__ network_connection_pool_entry ;
typedef scalar_t__ gboolean ;


 int event_del (int *) ;
 int g_free (TYPE_2__*) ;
 int network_socket_free (TYPE_1__*) ;

void network_connection_pool_entry_free(network_connection_pool_entry *e, gboolean free_sock) {
 if (!e) return;

 if (e->sock && free_sock) {
  network_socket *sock = e->sock;

  event_del(&(sock->event));
  network_socket_free(sock);
 }

 g_free(e);
}
