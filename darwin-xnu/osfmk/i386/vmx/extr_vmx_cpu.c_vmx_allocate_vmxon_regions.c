
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vmcs_id; } ;
struct TYPE_5__ {TYPE_1__ specs; int * vmxon_region; } ;
typedef TYPE_2__ vmx_cpu_t ;
typedef int uint32_t ;
struct TYPE_6__ {TYPE_2__ cpu_vmx; } ;


 TYPE_3__* cpu_datap (unsigned int) ;
 int panic (char*) ;
 unsigned int real_ncpus ;
 int * vmx_pcalloc () ;

__attribute__((used)) static void
vmx_allocate_vmxon_regions(void)
{
 unsigned int i;

 for (i=0; i<real_ncpus; i++) {
  vmx_cpu_t *cpu = &cpu_datap(i)->cpu_vmx;


  cpu->vmxon_region = vmx_pcalloc();
  if (((void*)0) == cpu->vmxon_region)
   panic("vmx_allocate_vmxon_regions: unable to allocate VMXON region");
  *(uint32_t*)(cpu->vmxon_region) = cpu->specs.vmcs_id;
 }
}
