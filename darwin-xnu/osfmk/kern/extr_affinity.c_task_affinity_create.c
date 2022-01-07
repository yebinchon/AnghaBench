
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef TYPE_2__* affinity_space_t ;
struct TYPE_9__ {int aspc_lock; int aspc_task_count; } ;
struct TYPE_8__ {TYPE_2__* affinity_space; } ;


 int DBG (char*,TYPE_1__*,TYPE_1__*) ;
 int assert (TYPE_2__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
task_affinity_create(task_t parent_task, task_t child_task)
{
 affinity_space_t aspc = parent_task->affinity_space;

 DBG("task_affinity_create(%p,%p)\n", parent_task, child_task);

 assert(aspc);





 lck_mtx_lock(&aspc->aspc_lock);
 aspc->aspc_task_count++;
 child_task->affinity_space = aspc;
 lck_mtx_unlock(&aspc->aspc_lock);
}
