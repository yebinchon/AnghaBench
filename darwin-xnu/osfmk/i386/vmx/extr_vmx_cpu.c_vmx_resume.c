
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vmx_on; } ;
struct TYPE_5__ {TYPE_1__ specs; } ;
typedef TYPE_2__ vmx_cpu_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {TYPE_2__ cpu_vmx; } ;


 int FALSE ;
 int VMX_KPRINTF (char*) ;
 TYPE_3__* current_cpu_datap () ;
 int vmx_enable () ;
 int vmx_on (int *) ;
 scalar_t__ vmx_use_count ;

void
vmx_resume(boolean_t is_wake_from_hibernate)
{
 VMX_KPRINTF("vmx_resume\n");

 vmx_enable();

 if (vmx_use_count == 0)
  return;







 if (is_wake_from_hibernate) {
  vmx_cpu_t *cpu = &current_cpu_datap()->cpu_vmx;
  cpu->specs.vmx_on = FALSE;
 }

 vmx_on(((void*)0));
}
