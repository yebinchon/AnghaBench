
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct kperf_thread_info {int kpthi_runmode; int kpthi_dq_addr; scalar_t__ kpthi_tid; int kpthi_pid; } ;
struct kperf_context {int cur_pid; int cur_thread; } ;


 int BUF_INFO (int,uintptr_t) ;
 int BUF_VERB (int) ;
 int DBG_FUNC_END ;
 int PERF_TI_SAMPLE ;
 int kperf_thread_info_runmode_legacy (int ) ;
 int thread_dispatchqaddr (int ) ;
 scalar_t__ thread_tid (int ) ;

void
kperf_thread_info_sample(struct kperf_thread_info *ti, struct kperf_context *context)
{
 thread_t cur_thread = context->cur_thread;

 BUF_INFO(PERF_TI_SAMPLE, (uintptr_t)thread_tid(cur_thread));

 ti->kpthi_pid = context->cur_pid;
 ti->kpthi_tid = thread_tid(cur_thread);
 ti->kpthi_dq_addr = thread_dispatchqaddr(cur_thread);
 ti->kpthi_runmode = kperf_thread_info_runmode_legacy(cur_thread);

 BUF_VERB(PERF_TI_SAMPLE | DBG_FUNC_END);
}
