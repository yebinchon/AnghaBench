
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 scalar_t__ kpc_threads_counting ;
 int kpc_update_thread_counters (int ) ;

void
kpc_off_cpu_internal(thread_t thread)
{
 if (kpc_threads_counting) {
  kpc_update_thread_counters(thread);
 }
}
