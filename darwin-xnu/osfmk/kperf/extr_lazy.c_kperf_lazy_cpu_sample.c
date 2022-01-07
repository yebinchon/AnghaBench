
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
typedef int task_t ;
struct kperf_sample {int dummy; } ;
struct kperf_context {int starting_fp; int trigger_type; int cur_pid; int cur_task; TYPE_1__* cur_thread; } ;
typedef TYPE_2__* processor_t ;
struct TYPE_7__ {scalar_t__ kperf_last_sample_time; } ;
struct TYPE_6__ {int sched_pri; int system_timer; int user_timer; int runnable_timer; } ;


 int BUF_DATA (int ,scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ FALSE ;
 int PERF_LZ_CPUSAMPLE ;
 unsigned int SAMPLE_FLAG_PEND_USER ;
 int TRIGGER_TYPE_LAZY_CPU ;
 int assert (int) ;
 TYPE_2__* current_processor () ;
 int get_threadtask (TYPE_1__*) ;
 struct kperf_sample* kperf_intr_sample_buffer () ;
 int kperf_lazy_cpu_action ;
 scalar_t__ kperf_lazy_cpu_time_threshold ;
 int kperf_sample (struct kperf_sample*,struct kperf_context*,int ,unsigned int) ;
 scalar_t__ mach_absolute_time () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int task_pid (int ) ;
 scalar_t__ timer_grab (int *) ;
 int timer_update (int *,scalar_t__) ;

void
kperf_lazy_cpu_sample(thread_t thread, unsigned int flags, bool interrupt)
{
 assert(ml_get_interrupts_enabled() == FALSE);


 processor_t processor = current_processor();
 uint64_t time_now = mach_absolute_time();
 uint64_t since_last_sample = time_now - processor->kperf_last_sample_time;
 if (since_last_sample > kperf_lazy_cpu_time_threshold) {
  processor->kperf_last_sample_time = time_now;
  timer_update(&thread->runnable_timer, time_now);
  timer_update(&thread->system_timer, time_now);

  uint64_t runnable_time = timer_grab(&thread->runnable_timer);
  uint64_t running_time = timer_grab(&thread->user_timer) +
    timer_grab(&thread->system_timer);

  BUF_DATA(PERF_LZ_CPUSAMPLE, running_time, runnable_time,
    thread->sched_pri, interrupt ? 1 : 0);

  task_t task = get_threadtask(thread);
  struct kperf_context ctx = {
   .cur_thread = thread,
   .cur_task = task,
   .cur_pid = task_pid(task),
   .trigger_type = TRIGGER_TYPE_LAZY_CPU,
   .starting_fp = 0,
  };

  struct kperf_sample *sample = kperf_intr_sample_buffer();
  if (!sample) {
   return;
  }

  kperf_sample(sample, &ctx, kperf_lazy_cpu_action,
    SAMPLE_FLAG_PEND_USER | flags);
 }
}
