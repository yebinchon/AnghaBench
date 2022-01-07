
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef TYPE_1__* task_t ;
typedef int queue_entry_t ;
struct TYPE_3__ {int active; int threads; } ;


 scalar_t__ THREAD_NULL ;
 scalar_t__ queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;

thread_t get_firstthread(task_t task)
{
 thread_t thread = (thread_t)(void *)queue_first(&task->threads);

 if (queue_end(&task->threads, (queue_entry_t)thread))
  thread = THREAD_NULL;

 if (!task->active)
  return (THREAD_NULL);

 return (thread);
}
