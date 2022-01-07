
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vmxon_region; } ;
typedef TYPE_1__ vmx_cpu_t ;
struct TYPE_4__ {TYPE_1__ cpu_vmx; } ;


 TYPE_2__* cpu_datap (unsigned int) ;
 unsigned int real_ncpus ;
 int vmx_pfree (int *) ;

__attribute__((used)) static void
vmx_free_vmxon_regions(void)
{
 unsigned int i;

 for (i=0; i<real_ncpus; i++) {
  vmx_cpu_t *cpu = &cpu_datap(i)->cpu_vmx;

  vmx_pfree(cpu->vmxon_region);
  cpu->vmxon_region = ((void*)0);
 }
}
