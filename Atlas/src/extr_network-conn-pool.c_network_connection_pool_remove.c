
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__* dst; TYPE_2__* src; int * response; } ;
typedef TYPE_5__ network_socket ;
struct TYPE_15__ {TYPE_5__* sock; } ;
typedef TYPE_6__ network_connection_pool_entry ;
typedef int network_connection_pool ;
struct TYPE_13__ {TYPE_3__* name; } ;
struct TYPE_12__ {int str; } ;
struct TYPE_11__ {TYPE_1__* name; } ;
struct TYPE_10__ {int str; } ;


 int G_STRLOC ;
 int TRUE ;
 int g_critical (char*,int ,int ,int ) ;
 int g_queue_remove (int *,TYPE_6__*) ;
 int network_connection_pool_entry_free (TYPE_6__*,int ) ;

void network_connection_pool_remove(network_connection_pool *pool, network_connection_pool_entry *entry) {
 network_socket *sock = entry->sock;

 if (sock->response == ((void*)0)) {
  g_critical("%s: (remove) remove socket from pool, response is NULL, src is %s, dst is %s", G_STRLOC, sock->src->name->str, sock->dst->name->str);
 }

 network_connection_pool_entry_free(entry, TRUE);

 g_queue_remove(pool, entry);
}
