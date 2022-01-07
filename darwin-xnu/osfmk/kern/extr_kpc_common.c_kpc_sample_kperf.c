
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int thread_t ;
typedef int task_t ;
struct kperf_sample {int dummy; } ;
struct kperf_context {int trigger_id; int trigger_type; int cur_pid; int cur_task; int cur_thread; } ;


 int BUF_DATA (int) ;
 int BUF_INFO (int,int) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PERF_KPC_HNDLR ;
 int SAMPLE_FLAG_PEND_USER ;
 int TRIGGER_TYPE_PMI ;
 int current_thread () ;
 int get_threadtask (int ) ;
 int kperf_sample (struct kperf_sample*,struct kperf_context*,int ,int ) ;
 int task_pid (int ) ;

void
kpc_sample_kperf(uint32_t actionid)
{
 struct kperf_sample sbuf;

 BUF_DATA(PERF_KPC_HNDLR | DBG_FUNC_START);

 thread_t thread = current_thread();
 task_t task = get_threadtask(thread);

 struct kperf_context ctx = {
  .cur_thread = thread,
  .cur_task = task,
  .cur_pid = task_pid(task),
  .trigger_type = TRIGGER_TYPE_PMI,
  .trigger_id = 0,
 };

 int r = kperf_sample(&sbuf, &ctx, actionid, SAMPLE_FLAG_PEND_USER);

 BUF_INFO(PERF_KPC_HNDLR | DBG_FUNC_END, r);
}
