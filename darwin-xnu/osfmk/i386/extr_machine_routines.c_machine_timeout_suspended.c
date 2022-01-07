
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ ml_recent_wake () ;
 scalar_t__ mp_recent_debugger_activity () ;
 scalar_t__ panic_active () ;
 scalar_t__ pmap_tlb_flush_timeout ;
 scalar_t__ spinlock_timed_out ;

boolean_t machine_timeout_suspended(void) {
 return (pmap_tlb_flush_timeout || spinlock_timed_out || panic_active() || mp_recent_debugger_activity() || ml_recent_wake());
}
