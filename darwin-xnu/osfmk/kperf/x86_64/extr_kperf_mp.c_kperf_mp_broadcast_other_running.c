
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct kperf_timer {int pending_cpus; } ;
typedef TYPE_1__* processor_t ;
typedef int cpumask_t ;
struct TYPE_6__ {int logical_cpu_max; } ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ active_thread; } ;


 int BUF_VERB (int ,int,int,...) ;
 int NOSYNC ;
 int PERF_TM_PENDING ;
 int PERF_TM_SKIPPED ;
 TYPE_1__* PROCESSOR_NULL ;
 scalar_t__ PROCESSOR_RUNNING ;
 scalar_t__ THREAD_NULL ;
 int UINT64_C (int) ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 int atomic_fetch_or_explicit (int *,int,int ) ;
 int cpu_number () ;
 int cpu_to_cpumask (int) ;
 TYPE_1__* cpu_to_processor (int) ;
 int kperf_ipi_handler ;
 int kperf_pending_ipis ;
 TYPE_2__ machine_info ;
 int memory_order_relaxed ;
 int mp_cpus_call (int ,int ,int ,struct kperf_timer*) ;

bool
kperf_mp_broadcast_other_running(struct kperf_timer *trigger)
{
 int current_cpu = cpu_number();
 int ncpus = machine_info.logical_cpu_max;
 bool system_only_self = 1;
 cpumask_t cpu_mask = 0;

 for (int i = 0; i < ncpus; i++) {
  uint64_t i_bit = UINT64_C(1) << i;
  processor_t processor = cpu_to_processor(i);


  if (processor == PROCESSOR_NULL ||
    processor->state != PROCESSOR_RUNNING ||
    processor->active_thread == THREAD_NULL)
  {





   continue;
  }


  if (i == current_cpu) {
   system_only_self = 0;
   continue;
  }


  uint64_t already_pending = atomic_fetch_or_explicit(
    &trigger->pending_cpus, i_bit,
    memory_order_relaxed);
  if (already_pending & i_bit) {





   continue;
  }

  cpu_mask |= cpu_to_cpumask(i);
 }

 if (cpu_mask != 0) {
  mp_cpus_call(cpu_mask, NOSYNC, kperf_ipi_handler, trigger);
 }

 return system_only_self;
}
