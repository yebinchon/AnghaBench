
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int event_t ;
typedef int boolean_t ;
struct TYPE_2__ {unsigned int max_cpus; unsigned int physical_cpu_max; unsigned int logical_cpu_max; } ;


 int FALSE ;
 scalar_t__ MAX_CPUS_SET ;
 scalar_t__ MAX_CPUS_WAIT ;
 TYPE_1__ machine_info ;
 scalar_t__ max_cpus_initialized ;
 int ml_set_interrupts_enabled (int ) ;
 int thread_wakeup (int ) ;

void
ml_init_max_cpus(unsigned int max_cpus)
{
 boolean_t current_state;

 current_state = ml_set_interrupts_enabled(FALSE);
 if (max_cpus_initialized != MAX_CPUS_SET) {
  machine_info.max_cpus = max_cpus;
  machine_info.physical_cpu_max = max_cpus;
  machine_info.logical_cpu_max = max_cpus;
  if (max_cpus_initialized == MAX_CPUS_WAIT)
   thread_wakeup((event_t) & max_cpus_initialized);
  max_cpus_initialized = MAX_CPUS_SET;
 }
 (void) ml_set_interrupts_enabled(current_state);
}
