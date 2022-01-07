
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* task_t ;
struct TYPE_6__ {int thread_count; int threads; } ;
struct TYPE_5__ {int task_threads; } ;


 TYPE_1__* current_thread () ;
 int paniclog_append_noflush (char*,int) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;

void
print_thread_num_that_crashed(task_t task)
{
 thread_t c_thread = current_thread();
 thread_t thread;
 int j;

 for (j = 0, thread = (thread_t) queue_first(&task->threads); j < task->thread_count;
   ++j, thread = (thread_t) queue_next(&thread->task_threads)) {

  if (c_thread == thread) {
   paniclog_append_noflush("\nThread %d crashed\n", j);
   break;
  }
 }
}
