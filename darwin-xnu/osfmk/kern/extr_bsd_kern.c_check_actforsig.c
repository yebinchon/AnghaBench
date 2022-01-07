
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_t ;
typedef int queue_entry_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_11__ {int threads; int active; } ;
struct TYPE_10__ {int sched_flags; int task_threads; scalar_t__ active; } ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int TH_SFLAG_ABORT ;
 int TH_SFLAG_ABORTED_MASK ;
 int act_set_astbsd (TYPE_1__*) ;
 int queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 int task_lock (TYPE_2__*) ;
 int task_unlock (TYPE_2__*) ;
 int thread_mtx_lock (TYPE_1__*) ;
 int thread_mtx_unlock (TYPE_1__*) ;

kern_return_t
check_actforsig(
 task_t task,
 thread_t thread,
 int setast)
{
 kern_return_t result = KERN_FAILURE;
 thread_t inc;

 task_lock(task);

 if (!task->active) {
  task_unlock(task);

  return (KERN_FAILURE);
 }

 for (inc = (thread_t)(void *)queue_first(&task->threads);
   !queue_end(&task->threads, (queue_entry_t)inc); ) {
  if (inc == thread) {
   thread_mtx_lock(inc);

   if (inc->active &&
     (inc->sched_flags & TH_SFLAG_ABORTED_MASK) != TH_SFLAG_ABORT) {
    result = KERN_SUCCESS;
    break;
   }

   thread_mtx_unlock(inc);
   break;
  }

  inc = (thread_t)(void *)queue_next(&inc->task_threads);
 }

 if (result == KERN_SUCCESS) {
  if (setast)
   act_set_astbsd(thread);

  thread_mtx_unlock(thread);
 }

 task_unlock(task);

 return (result);
}
