
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int assert (int) ;
 scalar_t__ hibernate_vm_locks_safe ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int ml_set_is_quiescing (scalar_t__) ;

void
hibernate_vm_lock_end(void)
{
    assert(FALSE == ml_get_interrupts_enabled());
    hibernate_vm_locks_safe = FALSE;
    ml_set_is_quiescing(FALSE);
}
