
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct kperf_thread_scheduling {int kpthsc_sched_priority; int kpthsc_state; int kpthsc_effective_qos; int kpthsc_requested_qos; int kpthsc_requested_qos_override; int kpthsc_runnable_time; scalar_t__ kpthsc_requested_qos_sync_ipc_override; scalar_t__ kpthsc_requested_qos_ipc_override; scalar_t__ kpthsc_requested_qos_promote; scalar_t__ kpthsc_effective_latency_qos; scalar_t__ kpthsc_base_priority; int kpthsc_system_time; int kpthsc_user_time; } ;


 int BUF_DATA (int ,int,...) ;
 int LOWER_32 (int ) ;
 int PERF_TI_SCHEDDATA1_32 ;
 int PERF_TI_SCHEDDATA2_32_2 ;
 int PERF_TI_SCHEDDATA3_32 ;
 int PERF_TI_SCHEDDATA_2 ;
 int PERF_TI_SCHEDDATA_3 ;
 int UPPER_32 (int ) ;
 int assert (int ) ;

void
kperf_thread_scheduling_log(struct kperf_thread_scheduling *thsc)
{
 assert(thsc != ((void*)0));

 BUF_DATA(PERF_TI_SCHEDDATA_2, thsc->kpthsc_user_time,
   thsc->kpthsc_system_time,
   (((uint64_t)thsc->kpthsc_base_priority) << 48)
   | ((uint64_t)thsc->kpthsc_sched_priority << 32)
   | ((uint64_t)(thsc->kpthsc_state & 0xff) << 24)
   | (thsc->kpthsc_effective_qos << 6)
   | (thsc->kpthsc_requested_qos << 3)
   | thsc->kpthsc_requested_qos_override,
   ((uint64_t)thsc->kpthsc_effective_latency_qos << 61)
   | ((uint64_t)thsc->kpthsc_requested_qos_promote << 58)
   | ((uint64_t)thsc->kpthsc_requested_qos_ipc_override << 55)
   | ((uint64_t)thsc->kpthsc_requested_qos_sync_ipc_override << 52)
   );
 BUF_DATA(PERF_TI_SCHEDDATA_3, thsc->kpthsc_runnable_time);
}
