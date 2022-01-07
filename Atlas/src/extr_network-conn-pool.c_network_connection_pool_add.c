
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int network_socket ;
struct TYPE_5__ {int * pool; int * sock; } ;
typedef TYPE_1__ network_connection_pool_entry ;
typedef int network_connection_pool ;


 int g_queue_push_tail (int *,TYPE_1__*) ;
 TYPE_1__* network_connection_pool_entry_new () ;
 int network_socket_free (int *) ;

network_connection_pool_entry *network_connection_pool_add(network_connection_pool *pool, network_socket *sock) {
 if (pool) {
  network_connection_pool_entry *entry = network_connection_pool_entry_new();
  if (entry) {
   entry->sock = sock;
   entry->pool = pool;
   g_queue_push_tail(pool, entry);

   return entry;
  }
 }

 network_socket_free(sock);
 return ((void*)0);
}
