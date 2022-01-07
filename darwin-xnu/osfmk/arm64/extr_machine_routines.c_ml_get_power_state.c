
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ cpu_idle_count ;
 int ml_at_interrupt_context () ;
 scalar_t__ real_ncpus ;

void ml_get_power_state(boolean_t *icp, boolean_t *pidlep) {
 *icp = ml_at_interrupt_context();
 *pidlep = (cpu_idle_count == real_ncpus);
}
