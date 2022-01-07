
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int thread_state_t ;
typedef TYPE_1__* task_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_7__ {int active; } ;


 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 TYPE_1__* TASK_NULL ;
 int machine_task_set_state (TYPE_1__*,int,int ,int ) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

kern_return_t
task_set_state(
 task_t task,
 int flavor,
 thread_state_t state,
 mach_msg_type_number_t state_count)
{
 kern_return_t ret;

 if (task == TASK_NULL) {
  return (KERN_INVALID_ARGUMENT);
 }

 task_lock(task);

 if (!task->active) {
  task_unlock(task);
  return (KERN_FAILURE);
 }

 ret = machine_task_set_state(task, flavor, state, state_count);

 task_unlock(task);
 return ret;
}
