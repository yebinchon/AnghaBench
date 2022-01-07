
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int event; } ;
typedef TYPE_1__ network_socket ;
struct TYPE_10__ {TYPE_1__* sock; } ;
typedef TYPE_2__ network_connection_pool_entry ;
struct TYPE_11__ {scalar_t__ length; } ;
typedef TYPE_3__ network_connection_pool ;


 int FALSE ;
 int event_del (int *) ;
 TYPE_2__* g_queue_pop_tail (TYPE_3__*) ;
 int network_connection_pool_entry_free (TYPE_2__*,int ) ;

network_socket *network_connection_pool_get(network_connection_pool *pool) {
 network_connection_pool_entry *entry = ((void*)0);

 if (pool->length > 0) {

  entry = g_queue_pop_tail(pool);
 }





 if (!entry) return ((void*)0);

 network_socket *sock = entry->sock;

 network_connection_pool_entry_free(entry, FALSE);


 event_del(&(sock->event));

 return sock;
}
