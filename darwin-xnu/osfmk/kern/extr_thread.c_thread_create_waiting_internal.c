
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int thread_continue_t ;
typedef TYPE_2__* task_t ;
typedef scalar_t__ kern_return_t ;
typedef int event_t ;
typedef int block_hint_t ;
struct TYPE_18__ {scalar_t__ suspend_count; } ;
struct TYPE_17__ {int static_param; } ;


 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 TYPE_2__* TASK_NULL ;
 int THREAD_INTERRUPTIBLE ;
 int TH_OPTION_WORKQ ;
 TYPE_2__* kernel_task ;
 int lck_mtx_unlock (int *) ;
 int task_unlock (TYPE_2__*) ;
 int tasks_threads_lock ;
 scalar_t__ thread_create_internal (TYPE_2__*,int,int ,int *,int,TYPE_1__**) ;
 int thread_hold (TYPE_1__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;
 int thread_set_pending_block_hint (TYPE_1__*,int ) ;
 int thread_start_in_assert_wait (TYPE_1__*,int ,int ) ;
 int workq_thread_init_and_wq_lock (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static kern_return_t
thread_create_waiting_internal(
 task_t task,
 thread_continue_t continuation,
 event_t event,
 block_hint_t block_hint,
 int options,
 thread_t *new_thread)
{
 kern_return_t result;
 thread_t thread;

 if (task == TASK_NULL || task == kernel_task)
  return (KERN_INVALID_ARGUMENT);

 result = thread_create_internal(task, -1, continuation, ((void*)0),
   options, &thread);
 if (result != KERN_SUCCESS)
  return (result);



 if (task->suspend_count > 0)
  thread_hold(thread);

 thread_mtx_lock(thread);
 thread_set_pending_block_hint(thread, block_hint);
 if (options & TH_OPTION_WORKQ) {
  thread->static_param = 1;
  event = workq_thread_init_and_wq_lock(task, thread);
 }
 thread_start_in_assert_wait(thread, event, THREAD_INTERRUPTIBLE);
 thread_mtx_unlock(thread);

 task_unlock(task);
 lck_mtx_unlock(&tasks_threads_lock);

 *new_thread = thread;

 return (KERN_SUCCESS);
}
