
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* srv; } ;
typedef TYPE_2__ network_mysqld_con ;
typedef int network_backends_t ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ state; int connected_clients; } ;
typedef TYPE_3__ network_backend_t ;
typedef scalar_t__ guint ;
struct TYPE_7__ {int * backends; } ;


 scalar_t__ BACKEND_STATE_UP ;
 scalar_t__ BACKEND_TYPE_RO ;
 int * chassis_event_thread_pool (TYPE_3__*) ;
 scalar_t__ network_backends_count (int *) ;
 TYPE_3__* network_backends_get (int *,scalar_t__) ;

int idle_ro(network_mysqld_con* con) {
 int max_conns = -1;
 guint i;

 network_backends_t* backends = con->srv->backends;

 guint count = network_backends_count(backends);
 for(i = 0; i < count; ++i) {
  network_backend_t* backend = network_backends_get(backends, i);
  if (backend == ((void*)0)) continue;

  if (chassis_event_thread_pool(backend) == ((void*)0)) continue;

  if (backend->type == BACKEND_TYPE_RO && backend->state == BACKEND_STATE_UP) {
   if (max_conns == -1 || backend->connected_clients < max_conns) {
    max_conns = backend->connected_clients;
   }
  }
 }

 return max_conns;
}
