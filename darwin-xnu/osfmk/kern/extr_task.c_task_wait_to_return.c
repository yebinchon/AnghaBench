
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_6__ {int t_flags; } ;


 int TF_LRETURNWAIT ;
 int TF_LRETURNWAITER ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int assert_wait (int ,int ) ;
 int current_proc () ;
 TYPE_1__* current_task () ;
 int mac_proc_notify_exec_complete (int ) ;
 int task_get_return_wait_event (TYPE_1__*) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int thread_block (int ) ;
 int thread_bootstrap_return () ;

void __attribute__((noreturn))
task_wait_to_return(void)
{
 task_t task;

 task = current_task();
 task_lock(task);

 if (task->t_flags & TF_LRETURNWAIT) {
  do {
   task->t_flags |= TF_LRETURNWAITER;
   assert_wait(task_get_return_wait_event(task), THREAD_UNINT);
   task_unlock(task);

   thread_block(THREAD_CONTINUE_NULL);

   task_lock(task);
  } while (task->t_flags & TF_LRETURNWAIT);
 }

 task_unlock(task);
 thread_bootstrap_return();
}
