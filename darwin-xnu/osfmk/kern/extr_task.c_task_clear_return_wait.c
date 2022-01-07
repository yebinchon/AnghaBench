
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_6__ {int t_flags; } ;


 int TF_LRETURNWAIT ;
 int TF_LRETURNWAITER ;
 int task_get_return_wait_event (TYPE_1__*) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int thread_wakeup (int ) ;

void
task_clear_return_wait(task_t task)
{
 task_lock(task);

 task->t_flags &= ~TF_LRETURNWAIT;

 if (task->t_flags & TF_LRETURNWAITER) {
  thread_wakeup(task_get_return_wait_event(task));
  task->t_flags &= ~TF_LRETURNWAITER;
 }

 task_unlock(task);
}
