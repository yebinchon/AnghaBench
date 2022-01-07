
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kperf_timer {int pending_cpus; } ;


 unsigned int UINT64_C (int) ;
 int atomic_fetch_and_explicit (int *,int,int ) ;
 int kperf_ipi_handler (struct kperf_timer*) ;
 scalar_t__ kperf_timerc ;
 struct kperf_timer* kperf_timerv ;
 int memory_order_relaxed ;

void
kperf_signal_handler(unsigned int cpu_number)
{
 uint64_t cpu_mask = UINT64_C(1) << cpu_number;


 for(int i = 0; i < (int)kperf_timerc; i++) {
  uint64_t pending_cpus;
  struct kperf_timer *timer = &kperf_timerv[i];

  pending_cpus = atomic_fetch_and_explicit(&timer->pending_cpus,
    ~cpu_mask, memory_order_relaxed);
  if (pending_cpus & cpu_mask) {
   kperf_ipi_handler(timer);
  }
 }
}
