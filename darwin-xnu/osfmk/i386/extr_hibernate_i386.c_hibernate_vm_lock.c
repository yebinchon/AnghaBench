
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_hibernate; } ;


 int TRUE ;
 TYPE_1__* current_cpu_datap () ;
 int hibernate_vm_lock_queues () ;
 int hibernate_vm_locks_safe ;

void
hibernate_vm_lock(void)
{
    if (current_cpu_datap()->cpu_hibernate) {
 hibernate_vm_lock_queues();
 hibernate_vm_locks_safe = TRUE;
    }
}
