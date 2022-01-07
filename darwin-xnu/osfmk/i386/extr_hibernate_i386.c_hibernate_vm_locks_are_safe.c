
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ FALSE ;
 int assert (int) ;
 int hibernate_vm_locks_safe ;
 scalar_t__ ml_get_interrupts_enabled () ;

boolean_t
hibernate_vm_locks_are_safe(void)
{
    assert(FALSE == ml_get_interrupts_enabled());
    return (hibernate_vm_locks_safe);
}
