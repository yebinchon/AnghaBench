
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef scalar_t__ pmap_paddr_t ;
struct TYPE_3__ {scalar_t__ topOfKernelData; } ;
typedef TYPE_1__ boot_args ;
typedef int boolean_t ;


 int AP_RONA ;
 int ARM_PGBYTES ;
 int ARM_PTE_AP (int ) ;
 int ARM_PTE_APMASK ;
 int ARM_TT_L2_INDEX_MASK ;
 int ARM_TT_L2_SHIFT ;
 int FALSE ;
 int HIGH_EXC_VECTORS ;
 int PAGE_MAX_SIZE ;
 int TRUE ;
 int arm_vm_page_granular_RNX (int,int,int ) ;
 int arm_vm_page_granular_ROX (int ,int ,int ) ;
 int arm_vm_page_granular_RWNX (int,int,int ) ;
 int arm_vm_page_granular_RWX (int,int,int ) ;
 scalar_t__ doconstro ;
 int end_kern ;
 int fiqstack_high_guard ;
 int gVirtBase ;
 int intstack_high_guard ;
 int intstack_low_guard ;
 int phystokv (scalar_t__) ;
 int sectCONSTB ;
 int sectSizeCONST ;
 int segBOOTDATAB ;
 int segDATAB ;
 int segEXTRADATA ;
 int segKLDB ;
 int segLASTB ;
 int segLINKB ;
 int segPRELINKTEXTB ;
 int segSizeBOOTDATA ;
 int segSizeDATA ;
 int segSizeEXTRADATA ;
 int segSizeKLD ;
 int segSizeLAST ;
 int segSizeLINK ;
 int segSizePRELINKTEXT ;
 int segSizeTEXT ;
 int segTEXTB ;
 int static_memory_end ;

void
arm_vm_prot_init(boot_args * args)
{



 boolean_t force_coarse_physmap = FALSE;
 arm_vm_page_granular_RWX(gVirtBase, segSizeTEXT + (segTEXTB - gVirtBase), FALSE);

 if (doconstro) {




  arm_vm_page_granular_RWNX(segDATAB, sectCONSTB - segDATAB, FALSE);
  arm_vm_page_granular_RNX(sectCONSTB, sectSizeCONST, FALSE);
  arm_vm_page_granular_RWNX(sectCONSTB + sectSizeCONST, (segDATAB + segSizeDATA) - (sectCONSTB + sectSizeCONST), FALSE);
 } else {

  arm_vm_page_granular_RWNX(segDATAB, segSizeDATA, FALSE);
 }
 arm_vm_page_granular_RWNX(segBOOTDATAB, segSizeBOOTDATA, TRUE);
 arm_vm_page_granular_RNX((vm_offset_t)&intstack_low_guard, PAGE_MAX_SIZE, TRUE);
 arm_vm_page_granular_RNX((vm_offset_t)&intstack_high_guard, PAGE_MAX_SIZE, TRUE);
 arm_vm_page_granular_RNX((vm_offset_t)&fiqstack_high_guard, PAGE_MAX_SIZE, TRUE);

 arm_vm_page_granular_ROX(segKLDB, segSizeKLD, force_coarse_physmap);
 arm_vm_page_granular_RWNX(segLINKB, segSizeLINK, force_coarse_physmap);
 arm_vm_page_granular_RWNX(segLASTB, segSizeLAST, FALSE);
 arm_vm_page_granular_RWNX(segPRELINKTEXTB, segSizePRELINKTEXT, TRUE);
 arm_vm_page_granular_RWNX(segPRELINKTEXTB + segSizePRELINKTEXT,
                              end_kern - (segPRELINKTEXTB + segSizePRELINKTEXT), force_coarse_physmap);
 arm_vm_page_granular_RWNX(end_kern, phystokv(args->topOfKernelData) - end_kern, force_coarse_physmap);
 arm_vm_page_granular_RNX(segEXTRADATA, segSizeEXTRADATA, FALSE);
 arm_vm_page_granular_RWNX(phystokv(args->topOfKernelData), ARM_PGBYTES * 8, FALSE);
 arm_vm_page_granular_RWNX(phystokv(args->topOfKernelData) + ARM_PGBYTES * 8, ARM_PGBYTES, FALSE);
 arm_vm_page_granular_RWX(phystokv(args->topOfKernelData) + ARM_PGBYTES * 9, ARM_PGBYTES, FALSE);


 arm_vm_page_granular_RWNX(phystokv(args->topOfKernelData) + ARM_PGBYTES * 10,
                           static_memory_end - (phystokv(args->topOfKernelData) + ARM_PGBYTES * 10), force_coarse_physmap);





 pmap_paddr_t p = (pmap_paddr_t)(args->topOfKernelData) + (ARM_PGBYTES * 9);
 pt_entry_t *ppte = (pt_entry_t *)phystokv(p);

 int idx = (HIGH_EXC_VECTORS & ARM_TT_L2_INDEX_MASK) >> ARM_TT_L2_SHIFT;
 pt_entry_t ptmp = ppte[idx];

 ptmp = (ptmp & ~ARM_PTE_APMASK) | ARM_PTE_AP(AP_RONA);

 ppte[idx] = ptmp;
}
