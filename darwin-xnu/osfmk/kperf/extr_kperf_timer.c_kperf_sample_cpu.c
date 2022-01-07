
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
typedef int task_t ;
struct kperf_timer {int pending_cpus; int actionid; } ;
struct kperf_sample {int sample_time; } ;
struct kperf_context {unsigned int trigger_id; int cur_thread; int trigger_type; int cur_pid; int cur_task; } ;
struct TYPE_2__ {int logical_cpu_max; } ;


 int BUF_DATA (int,int ) ;
 int BUF_INFO (int,int) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 unsigned int KPERF_SAMPLING_OFF ;
 unsigned int KPERF_SAMPLING_SHUTDOWN ;
 int PERF_TM_HNDLR ;
 int SAMPLE_FLAG_ONLY_SYSTEM ;
 int SAMPLE_FLAG_PEND_USER ;
 int SAMPLE_FLAG_SYSTEM ;
 int SAMPLE_OFF ;
 int SAMPLE_SHUTDOWN ;
 int TRIGGER_TYPE_TIMER ;
 int UINT64_C (int) ;
 int assert (int ) ;
 int atomic_fetch_and_explicit (int *,int,int ) ;
 int cpu_number () ;
 int current_thread () ;
 int get_threadtask (int ) ;
 struct kperf_sample* kperf_intr_sample_buffer () ;
 int kperf_sample (struct kperf_sample*,struct kperf_context*,int ,int) ;
 unsigned int kperf_sampling_status () ;
 int * kperf_tid_on_cpus ;
 int kperf_timerv ;
 int mach_absolute_time () ;
 TYPE_1__ machine_info ;
 int memory_order_relaxed ;
 scalar_t__ pet_timer_id ;
 int task_pid (int ) ;
 int thread_tid (int ) ;

__attribute__((used)) static void
kperf_sample_cpu(struct kperf_timer *timer, bool system_sample,
  bool only_system)
{
 assert(timer != ((void*)0));


 BUF_DATA(PERF_TM_HNDLR | DBG_FUNC_START, 0);

 int ncpu = cpu_number();

 struct kperf_sample *intbuf = kperf_intr_sample_buffer();





 thread_t thread = current_thread();
 task_t task = get_threadtask(thread);
 struct kperf_context ctx = {
  .cur_thread = thread,
  .cur_task = task,
  .cur_pid = task_pid(task),
  .trigger_type = TRIGGER_TYPE_TIMER,
  .trigger_id = (unsigned int)(timer - kperf_timerv),
 };

 if (ctx.trigger_id == pet_timer_id && ncpu < machine_info.logical_cpu_max) {
  kperf_tid_on_cpus[ncpu] = thread_tid(ctx.cur_thread);
 }


 unsigned int status = kperf_sampling_status();
 if (status == KPERF_SAMPLING_OFF) {
  BUF_INFO(PERF_TM_HNDLR | DBG_FUNC_END, SAMPLE_OFF);
  return;
 } else if (status == KPERF_SAMPLING_SHUTDOWN) {
  BUF_INFO(PERF_TM_HNDLR | DBG_FUNC_END, SAMPLE_SHUTDOWN);
  return;
 }


 int r = kperf_sample(intbuf, &ctx, timer->actionid,
   SAMPLE_FLAG_PEND_USER | (system_sample ? SAMPLE_FLAG_SYSTEM : 0) |
   (only_system ? SAMPLE_FLAG_ONLY_SYSTEM : 0));


 BUF_INFO(PERF_TM_HNDLR | DBG_FUNC_END, r);

 (void)atomic_fetch_and_explicit(&timer->pending_cpus,
   ~(UINT64_C(1) << ncpu), memory_order_relaxed);
}
