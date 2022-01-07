
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_t ;
typedef int queue_entry_t ;
struct TYPE_7__ {int threads; } ;
struct TYPE_6__ {scalar_t__ active; int task_threads; } ;


 int queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 int task_lock (TYPE_2__*) ;
 int task_unlock (TYPE_2__*) ;

int get_task_numactivethreads(task_t task)
{
 thread_t inc;
 int num_active_thr=0;
 task_lock(task);

 for (inc = (thread_t)(void *)queue_first(&task->threads);
   !queue_end(&task->threads, (queue_entry_t)inc); inc = (thread_t)(void *)queue_next(&inc->task_threads))
 {
  if(inc->active)
   num_active_thr++;
 }
 task_unlock(task);
 return num_active_thr;
}
