
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_5__ {scalar_t__ last_made_runnable_time; scalar_t__ last_run_time; int sched_pri; } ;


 int BUF_DATA (int ,uintptr_t,int ,int) ;
 int PERF_LZ_MKRUNNABLE ;
 scalar_t__ THREAD_NOT_RUNNABLE ;
 int assert (int) ;
 scalar_t__ kperf_lazy_wait_time_threshold ;
 scalar_t__ thread_get_last_wait_duration (TYPE_1__*) ;
 scalar_t__ thread_tid (TYPE_1__*) ;

void
kperf_lazy_make_runnable(thread_t thread, bool in_interrupt)
{
 assert(thread->last_made_runnable_time != THREAD_NOT_RUNNABLE);

 if (thread->last_run_time > thread->last_made_runnable_time) {
  return;
 }

 uint64_t wait_time = thread_get_last_wait_duration(thread);
 if (wait_time > kperf_lazy_wait_time_threshold) {
  BUF_DATA(PERF_LZ_MKRUNNABLE, (uintptr_t)thread_tid(thread),
    thread->sched_pri, in_interrupt ? 1 : 0);
 }
}
