
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ TRUE ;
 scalar_t__ get_preemption_level () ;
 scalar_t__ kernel_debugger_entry_count ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int not_in_kdp ;

boolean_t
oslog_is_safe(void) {
 return (kernel_debugger_entry_count == 0 &&
  not_in_kdp == 1 &&
  get_preemption_level() == 0 &&
  ml_get_interrupts_enabled() == TRUE);
}
