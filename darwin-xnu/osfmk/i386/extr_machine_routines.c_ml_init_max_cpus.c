
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ integer_t ;
typedef int event_t ;
typedef int boolean_t ;
struct TYPE_2__ {scalar_t__ max_cpus; } ;


 int FALSE ;
 unsigned long MAX_CPUS ;
 scalar_t__ MAX_CPUS_SET ;
 scalar_t__ MAX_CPUS_WAIT ;
 scalar_t__ MIN (unsigned long,int ) ;
 TYPE_1__ machine_info ;
 scalar_t__ max_cpus_initialized ;
 int max_ncpus ;
 int ml_set_interrupts_enabled (int ) ;
 int wakeup (int ) ;

void
ml_init_max_cpus(unsigned long max_cpus)
{
        boolean_t current_state;

        current_state = ml_set_interrupts_enabled(FALSE);
        if (max_cpus_initialized != MAX_CPUS_SET) {
                if (max_cpus > 0 && max_cpus <= MAX_CPUS) {






                        machine_info.max_cpus = (integer_t)MIN(max_cpus, max_ncpus);
  }
                if (max_cpus_initialized == MAX_CPUS_WAIT)
                        wakeup((event_t)&max_cpus_initialized);
                max_cpus_initialized = MAX_CPUS_SET;
        }
        (void) ml_set_interrupts_enabled(current_state);
}
