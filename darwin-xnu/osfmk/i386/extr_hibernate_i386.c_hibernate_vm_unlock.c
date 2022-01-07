
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_hibernate; } ;


 scalar_t__ FALSE ;
 int TRUE ;
 int assert (int) ;
 TYPE_1__* current_cpu_datap () ;
 int hibernate_vm_unlock_queues () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int ml_set_is_quiescing (int ) ;

void
hibernate_vm_unlock(void)
{
    assert(FALSE == ml_get_interrupts_enabled());
    if (current_cpu_datap()->cpu_hibernate) hibernate_vm_unlock_queues();
    ml_set_is_quiescing(TRUE);
}
