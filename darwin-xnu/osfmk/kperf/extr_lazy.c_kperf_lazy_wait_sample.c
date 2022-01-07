
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
typedef scalar_t__ thread_continue_t ;
typedef int task_t ;
struct kperf_sample {int dummy; } ;
struct kperf_context {uintptr_t* starting_fp; int trigger_type; int cur_pid; int cur_task; TYPE_1__* cur_thread; } ;
struct TYPE_5__ {scalar_t__ last_made_runnable_time; scalar_t__ last_run_time; int system_timer; int user_timer; int runnable_timer; } ;


 int BUF_DATA (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int PERF_LZ_WAITSAMPLE ;
 unsigned int SAMPLE_FLAG_CONTINUATION ;
 unsigned int SAMPLE_FLAG_NON_INTERRUPT ;
 unsigned int SAMPLE_FLAG_PEND_USER ;
 scalar_t__ THREAD_NOT_RUNNABLE ;
 int TRIGGER_TYPE_LAZY_WAIT ;
 int get_threadtask (TYPE_1__*) ;
 struct kperf_sample* kperf_intr_sample_buffer () ;
 int kperf_lazy_wait_action ;
 scalar_t__ kperf_lazy_wait_time_threshold ;
 int kperf_sample (struct kperf_sample*,struct kperf_context*,int ,unsigned int) ;
 scalar_t__ mach_absolute_time () ;
 int ml_at_interrupt_context () ;
 int task_pid (int ) ;
 scalar_t__ thread_get_last_wait_duration (TYPE_1__*) ;
 scalar_t__ timer_grab (int *) ;
 int timer_update (int *,scalar_t__) ;

void
kperf_lazy_wait_sample(thread_t thread, thread_continue_t continuation,
  uintptr_t *starting_fp)
{

 if (thread->last_made_runnable_time == THREAD_NOT_RUNNABLE) {
  return;
 }

 if (thread->last_made_runnable_time < thread->last_run_time) {
  return;
 }


 uint64_t wait_time = thread_get_last_wait_duration(thread);
 if (wait_time > kperf_lazy_wait_time_threshold) {
  uint64_t time_now = mach_absolute_time();
  timer_update(&thread->runnable_timer, time_now);
  timer_update(&thread->system_timer, time_now);

  uint64_t runnable_time = timer_grab(&thread->runnable_timer);
  uint64_t running_time = timer_grab(&thread->user_timer) +
    timer_grab(&thread->system_timer);

  BUF_DATA(PERF_LZ_WAITSAMPLE, wait_time, runnable_time, running_time);

  task_t task = get_threadtask(thread);
  struct kperf_context ctx = {
   .cur_thread = thread,
   .cur_task = task,
   .cur_pid = task_pid(task),
   .trigger_type = TRIGGER_TYPE_LAZY_WAIT,
   .starting_fp = starting_fp,
  };

  struct kperf_sample *sample = kperf_intr_sample_buffer();
  if (!sample) {
   return;
  }

  unsigned int flags = SAMPLE_FLAG_PEND_USER;
  flags |= continuation ? SAMPLE_FLAG_CONTINUATION : 0;
  flags |= !ml_at_interrupt_context() ? SAMPLE_FLAG_NON_INTERRUPT : 0;

  kperf_sample(sample, &ctx, kperf_lazy_wait_action, flags);
 }
}
