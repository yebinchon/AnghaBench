
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_2__* task_t ;
typedef TYPE_3__* coalition_t ;
struct TYPE_9__ {int gpu_time; } ;
struct TYPE_11__ {TYPE_1__ r; } ;
struct TYPE_10__ {TYPE_3__** coalition; } ;


 TYPE_3__* COALITION_NULL ;
 size_t COALITION_TYPE_RESOURCE ;
 TYPE_2__* TASK_NULL ;
 int assert (int) ;
 int coalition_lock (TYPE_3__*) ;
 int coalition_unlock (TYPE_3__*) ;

void task_coalition_update_gpu_stats(task_t task, uint64_t gpu_ns_delta)
{
 coalition_t coal;

 assert(task != TASK_NULL);
 if (gpu_ns_delta == 0)
  return;

 coal = task->coalition[COALITION_TYPE_RESOURCE];
 assert(coal != COALITION_NULL);

 coalition_lock(coal);
 coal->r.gpu_time += gpu_ns_delta;
 coalition_unlock(coal);
}
