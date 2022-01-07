
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int thread_t ;
typedef int thread_state_t ;
typedef int thread_continue_t ;
typedef TYPE_1__* task_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {scalar_t__ suspend_count; } ;


 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 TYPE_1__* TASK_NULL ;
 int TH_OPTION_NONE ;
 int extmod_statistics_incr_thread_create (TYPE_1__*) ;
 TYPE_1__* kernel_task ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ machine_thread_set_state (int ,int,int ,int ) ;
 scalar_t__ machine_thread_state_convert_from_user (int ,int,int ,int ) ;
 int task_unlock (TYPE_1__*) ;
 int tasks_threads_lock ;
 scalar_t__ thread_bootstrap_return ;
 scalar_t__ thread_create_internal (TYPE_1__*,int,int ,int *,int ,int *) ;
 int thread_deallocate (int ) ;
 int thread_hold (int ) ;
 int thread_mtx_lock (int ) ;
 int thread_mtx_unlock (int ) ;
 int thread_start (int ) ;
 int thread_terminate (int ) ;

__attribute__((used)) static kern_return_t
thread_create_running_internal2(
 task_t task,
 int flavor,
 thread_state_t new_state,
 mach_msg_type_number_t new_state_count,
 thread_t *new_thread,
 boolean_t from_user)
{
 kern_return_t result;
 thread_t thread;

 if (task == TASK_NULL || task == kernel_task)
  return (KERN_INVALID_ARGUMENT);

 result = thread_create_internal(task, -1,
   (thread_continue_t)thread_bootstrap_return, ((void*)0),
   TH_OPTION_NONE, &thread);
 if (result != KERN_SUCCESS)
  return (result);

 if (task->suspend_count > 0)
  thread_hold(thread);

 if (from_user) {
  result = machine_thread_state_convert_from_user(thread, flavor,
    new_state, new_state_count);
 }
 if (result == KERN_SUCCESS) {
  result = machine_thread_set_state(thread, flavor, new_state,
    new_state_count);
 }
 if (result != KERN_SUCCESS) {
  task_unlock(task);
  lck_mtx_unlock(&tasks_threads_lock);

  thread_terminate(thread);
  thread_deallocate(thread);
  return (result);
 }

 thread_mtx_lock(thread);
 thread_start(thread);
 thread_mtx_unlock(thread);

 if (from_user)
  extmod_statistics_incr_thread_create(task);

 task_unlock(task);
 lck_mtx_unlock(&tasks_threads_lock);

 *new_thread = thread;

 return (result);
}
