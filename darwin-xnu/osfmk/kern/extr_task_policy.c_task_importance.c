
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct task_pend_token {int dummy; } ;
typedef int kern_return_t ;
typedef int integer_t ;
struct TYPE_10__ {int importance; int active; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 scalar_t__ TASK_CONTROL_APPLICATION ;
 TYPE_1__* TASK_NULL ;
 int TASK_POLICY_ROLE ;
 TYPE_1__* kernel_task ;
 scalar_t__ proc_get_effective_task_policy (TYPE_1__*,int ) ;
 int task_lock (TYPE_1__*) ;
 int task_policy_update_complete_unlocked (TYPE_1__*,struct task_pend_token*) ;
 int task_policy_update_locked (TYPE_1__*,struct task_pend_token*) ;
 int task_unlock (TYPE_1__*) ;

kern_return_t
task_importance(
 task_t task,
 integer_t importance)
{
 if (task == TASK_NULL || task == kernel_task)
  return (KERN_INVALID_ARGUMENT);

 task_lock(task);

 if (!task->active) {
  task_unlock(task);

  return (KERN_TERMINATED);
 }

 if (proc_get_effective_task_policy(task, TASK_POLICY_ROLE) >= TASK_CONTROL_APPLICATION) {
  task_unlock(task);

  return (KERN_INVALID_ARGUMENT);
 }

 task->importance = importance;

 struct task_pend_token pend_token = {};

 task_policy_update_locked(task, &pend_token);

 task_unlock(task);

 task_policy_update_complete_unlocked(task, &pend_token);

 return (KERN_SUCCESS);
}
