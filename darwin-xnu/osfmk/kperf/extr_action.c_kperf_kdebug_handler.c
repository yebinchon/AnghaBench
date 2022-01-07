
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int thread_t ;
typedef int task_t ;
struct kperf_sample {int dummy; } ;
struct kperf_context {uintptr_t* starting_fp; int trigger_id; int trigger_type; int cur_pid; int cur_task; int cur_thread; } ;
typedef int kern_return_t ;


 int BUF_VERB (int,int ) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERN_SUCCESS ;
 int PERF_KDBG_HNDLR ;
 int SAMPLE_FLAG_NON_INTERRUPT ;
 int SAMPLE_FLAG_PEND_USER ;
 int TRIGGER_TYPE_KDEBUG ;
 int current_thread () ;
 int get_threadtask (int ) ;
 struct kperf_sample* kperf_intr_sample_buffer () ;
 int kperf_kdebug_get_action () ;
 int kperf_kdebug_should_trigger (int ) ;
 int kperf_sample (struct kperf_sample*,struct kperf_context*,int ,int ) ;
 int ml_at_interrupt_context () ;
 int ml_set_interrupts_enabled (int) ;
 int task_pid (int ) ;

void
kperf_kdebug_handler(uint32_t debugid, uintptr_t *starting_fp)
{
 uint32_t sample_flags = SAMPLE_FLAG_PEND_USER;
 struct kperf_sample *sample = ((void*)0);
 kern_return_t kr = KERN_SUCCESS;
 int s;

 if (!kperf_kdebug_should_trigger(debugid)) {
  return;
 }

 BUF_VERB(PERF_KDBG_HNDLR | DBG_FUNC_START, debugid);

 thread_t thread = current_thread();
 task_t task = get_threadtask(thread);
 struct kperf_context ctx = {
  .cur_thread = thread,
  .cur_task = task,
  .cur_pid = task_pid(task),
  .trigger_type = TRIGGER_TYPE_KDEBUG,
  .trigger_id = 0,
 };

 s = ml_set_interrupts_enabled(0);

 sample = kperf_intr_sample_buffer();

 if (!ml_at_interrupt_context()) {
  sample_flags |= SAMPLE_FLAG_NON_INTERRUPT;
  ctx.starting_fp = starting_fp;
 }

 kr = kperf_sample(sample, &ctx, kperf_kdebug_get_action(), sample_flags);

 ml_set_interrupts_enabled(s);
 BUF_VERB(PERF_KDBG_HNDLR | DBG_FUNC_END, kr);
}
