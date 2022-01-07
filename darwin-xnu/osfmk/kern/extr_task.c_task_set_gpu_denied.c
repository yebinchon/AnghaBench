
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int t_flags; } ;


 int TF_GPU_DENIED ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void task_set_gpu_denied(task_t task, boolean_t denied)
{
 task_lock(task);

 if (denied) {
  task->t_flags |= TF_GPU_DENIED;
 } else {
  task->t_flags &= ~TF_GPU_DENIED;
 }

 task_unlock(task);
}
