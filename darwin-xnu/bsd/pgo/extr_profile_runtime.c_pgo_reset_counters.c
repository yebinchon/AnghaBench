
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int boolean_t ;


 int FALSE ;
 int OSKextResetPgoCountersLock () ;
 int OSKextResetPgoCountersUnlock () ;
 int kdp_pgo_reset_counters ;
 int kextpgo_trap () ;
 int ml_set_interrupts_enabled (int ) ;

__attribute__((used)) static kern_return_t
pgo_reset_counters()
{
    kern_return_t r;
    boolean_t istate;

    OSKextResetPgoCountersLock();

    istate = ml_set_interrupts_enabled(FALSE);

    kdp_pgo_reset_counters = 1;
    r = kextpgo_trap();

    ml_set_interrupts_enabled(istate);

    OSKextResetPgoCountersUnlock();
    return r;
}
