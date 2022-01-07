
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
typedef TYPE_2__* task_t ;
struct TYPE_10__ {int thread_set_state_count; } ;
struct TYPE_8__ {int thread_set_state_count; int thread_set_state_caller_count; } ;
struct TYPE_9__ {TYPE_1__ extmod_statistics; } ;


 int OSIncrementAtomic64 (int *) ;
 TYPE_2__* TASK_NULL ;
 scalar_t__ THREAD_NULL ;
 TYPE_2__* current_task () ;
 TYPE_2__* get_threadtask (scalar_t__) ;
 TYPE_4__ host_extmod_statistics ;
 TYPE_2__* kernel_task ;

void
extmod_statistics_incr_thread_set_state(thread_t target)
{
 task_t ctask = current_task();
 task_t ttask;

 if ((ctask == kernel_task) || (target == THREAD_NULL))
  return;

 ttask = get_threadtask(target);

 if (ttask == TASK_NULL)
  return;

 if (ttask != ctask) {
  ctask->extmod_statistics.thread_set_state_caller_count++;
  ttask->extmod_statistics.thread_set_state_count++;
  OSIncrementAtomic64(&host_extmod_statistics.thread_set_state_count);
 }
}
