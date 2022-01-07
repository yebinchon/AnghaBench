
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vmx_present; } ;
struct TYPE_5__ {TYPE_1__ specs; } ;
typedef TYPE_2__ vmx_cpu_t ;
typedef int boolean_t ;
struct TYPE_6__ {TYPE_2__ cpu_vmx; } ;


 int FALSE ;
 int TRUE ;
 int VMX_KPRINTF (char*,int ) ;
 TYPE_3__* cpu_datap (unsigned int) ;
 unsigned int ml_get_max_cpus () ;

__attribute__((used)) static boolean_t
vmx_globally_available(void)
{
 unsigned int i;
 unsigned int ncpus = ml_get_max_cpus();
 boolean_t available = TRUE;

 for (i=0; i<ncpus; i++) {
  vmx_cpu_t *cpu = &cpu_datap(i)->cpu_vmx;

  if (!cpu->specs.vmx_present)
   available = FALSE;
 }
 VMX_KPRINTF("VMX available: %d\n", available);
 return available;
}
