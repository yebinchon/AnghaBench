
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* srv; } ;
typedef TYPE_2__ network_mysqld_con ;
struct TYPE_13__ {TYPE_5__* global_wrr; } ;
typedef TYPE_3__ network_backends_t ;
struct TYPE_14__ {scalar_t__ weight; scalar_t__ type; scalar_t__ state; } ;
typedef TYPE_4__ network_backend_t ;
typedef scalar_t__ guint ;
typedef int gint ;
struct TYPE_15__ {scalar_t__ max_weight; scalar_t__ cur_weight; scalar_t__ next_ndx; } ;
typedef TYPE_5__ g_wrr_poll ;
struct TYPE_11__ {TYPE_3__* backends; } ;


 scalar_t__ BACKEND_STATE_UP ;
 scalar_t__ BACKEND_TYPE_RO ;
 int * chassis_event_thread_pool (TYPE_4__*) ;
 scalar_t__ network_backends_count (TYPE_3__*) ;
 TYPE_4__* network_backends_get (TYPE_3__*,scalar_t__) ;

int wrr_ro(network_mysqld_con *con) {
 guint i;

 network_backends_t* backends = con->srv->backends;
 g_wrr_poll* rwsplit = backends->global_wrr;
 guint ndx_num = network_backends_count(backends);


 if (rwsplit->max_weight == 0) {
  for(i = 0; i < ndx_num; ++i) {
   network_backend_t* backend = network_backends_get(backends, i);
   if (backend == ((void*)0)) continue;
   if (rwsplit->max_weight < backend->weight) {
    rwsplit->max_weight = backend->weight;
    rwsplit->cur_weight = backend->weight;
   }
  }
 }

 guint max_weight = rwsplit->max_weight;
 guint cur_weight = rwsplit->cur_weight;
 guint next_ndx = rwsplit->next_ndx;


 gint ndx = -1;
 for(i = 0; i < ndx_num; ++i) {
  network_backend_t* backend = network_backends_get(backends, next_ndx);
  if (backend == ((void*)0)) goto next;

  if (chassis_event_thread_pool(backend) == ((void*)0)) goto next;

  if (backend->type == BACKEND_TYPE_RO && backend->weight >= cur_weight && backend->state == BACKEND_STATE_UP) ndx = next_ndx;

 next:
  if (next_ndx >= ndx_num - 1) {
   --cur_weight;
   next_ndx = 0;

   if (cur_weight == 0) cur_weight = max_weight;
  } else {
   ++next_ndx;
  }

  if (ndx != -1) break;
 }

 rwsplit->cur_weight = cur_weight;
 rwsplit->next_ndx = next_ndx;
 return ndx;
}
