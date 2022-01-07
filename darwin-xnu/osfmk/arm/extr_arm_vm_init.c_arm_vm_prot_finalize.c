
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int topOfKernelData; } ;
typedef TYPE_1__ boot_args ;


 int ARM_PGBYTES ;
 int BootCpuData ;
 int FALSE ;
 int FlushPoC_Dcache () ;
 int arm_vm_page_granular_ROX (scalar_t__,scalar_t__,int ) ;
 int arm_vm_page_granular_RWNX (scalar_t__,int,int ) ;
 int cpu_stack_alloc (int *) ;
 int flush_mmu_tlb () ;
 scalar_t__ gVirtBase ;
 int ml_static_mfree (int ,int ) ;
 scalar_t__ phystokv (int ) ;
 int segBOOTDATAB ;
 int segSizeBOOTDATA ;
 scalar_t__ segSizeTEXT ;
 scalar_t__ segTEXTB ;

void
arm_vm_prot_finalize(boot_args * args)
{
 cpu_stack_alloc(&BootCpuData);
 ml_static_mfree(segBOOTDATAB, segSizeBOOTDATA);






 arm_vm_page_granular_ROX(gVirtBase, segSizeTEXT + (segTEXTB - gVirtBase), FALSE);

 arm_vm_page_granular_RWNX(phystokv(args->topOfKernelData) + ARM_PGBYTES * 9, ARM_PGBYTES, FALSE);


 FlushPoC_Dcache();

 flush_mmu_tlb();
}
