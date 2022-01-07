
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_4__ {int topOfKernelData; } ;
typedef TYPE_1__ boot_args ;
struct TYPE_5__ {int length; int paddr; } ;
typedef TYPE_2__ MemoryMapFileInfo ;
typedef int DTEntry ;


 int BOOTSTRAP_TABLE_SIZE ;
 int DTGetProperty (int ,char*,void**,unsigned int*) ;
 int DTLookupEntry (int *,char*,int *) ;
 int FALSE ;
 int PAGE_MAX_SIZE ;
 int TRUE ;
 scalar_t__ UINT64_MAX ;
 int arm_vm_page_granular_RNX (scalar_t__,int,int ) ;
 int arm_vm_page_granular_ROX (int ,int ,int ) ;
 int arm_vm_page_granular_RWNX (scalar_t__,scalar_t__,int ) ;
 int arm_vm_page_granular_RWX (int ,int ,int ) ;
 int assert (int) ;
 int excepstack_high_guard ;
 int intstack_high_guard ;
 int intstack_low_guard ;
 int kSuccess ;
 scalar_t__ phystokv (int ) ;
 scalar_t__ segBOOTDATAB ;
 scalar_t__ segDATAB ;
 scalar_t__ segDATACONSTB ;
 scalar_t__ segEXTRADATA ;
 int segKLDB ;
 int segLASTB ;
 scalar_t__ segLINKB ;
 scalar_t__ segLOWESTTEXT ;
 scalar_t__ segPLKDATACONSTB ;
 scalar_t__ segPLKLINKEDITB ;
 scalar_t__ segPLKLLVMCOVB ;
 int segPLKTEXTEXECB ;
 scalar_t__ segPRELINKDATAB ;
 scalar_t__ segPRELINKINFOB ;
 scalar_t__ segPRELINKTEXTB ;
 scalar_t__ segSizeBOOTDATA ;
 scalar_t__ segSizeDATA ;
 scalar_t__ segSizeDATACONST ;
 int segSizeEXTRADATA ;
 int segSizeKLD ;
 int segSizeLAST ;
 scalar_t__ segSizeLINK ;
 scalar_t__ segSizePLKDATACONST ;
 scalar_t__ segSizePLKLINKEDIT ;
 scalar_t__ segSizePLKLLVMCOV ;
 int segSizePLKTEXTEXEC ;
 scalar_t__ segSizePRELINKDATA ;
 scalar_t__ segSizePRELINKINFO ;
 scalar_t__ segSizePRELINKTEXT ;
 int segSizeTEXT ;
 int segSizeTEXTEXEC ;
 scalar_t__ segTEXTB ;
 int segTEXTEXECB ;

void
arm_vm_prot_init(boot_args * args)
{

 segLOWESTTEXT = UINT64_MAX;
 if (segSizePRELINKTEXT && (segPRELINKTEXTB < segLOWESTTEXT)) segLOWESTTEXT = segPRELINKTEXTB;
 assert(segSizeTEXT);
 if (segTEXTB < segLOWESTTEXT) segLOWESTTEXT = segTEXTB;
 assert(segLOWESTTEXT < UINT64_MAX);

 segEXTRADATA = segLOWESTTEXT;
 segSizeEXTRADATA = 0;

 DTEntry memory_map;
 MemoryMapFileInfo *trustCacheRange;
 unsigned int trustCacheRangeSize;
 int err;

 err = DTLookupEntry(((void*)0), "chosen/memory-map", &memory_map);
 assert(err == kSuccess);

 err = DTGetProperty(memory_map, "TrustCache", (void**)&trustCacheRange, &trustCacheRangeSize);
 if (err == kSuccess) {
  assert(trustCacheRangeSize == sizeof(MemoryMapFileInfo));

  segEXTRADATA = phystokv(trustCacheRange->paddr);
  segSizeEXTRADATA = trustCacheRange->length;

  arm_vm_page_granular_RNX(segEXTRADATA, segSizeEXTRADATA, FALSE);
 }


 arm_vm_page_granular_RWNX(segPRELINKTEXTB, segSizePRELINKTEXT, FALSE);


 arm_vm_page_granular_RWNX(segPLKDATACONSTB, segSizePLKDATACONST, FALSE);


 arm_vm_page_granular_ROX(segPLKTEXTEXECB, segSizePLKTEXTEXEC, FALSE);




 if (!segSizePLKDATACONST && !segSizePLKTEXTEXEC) {
  if (segSizePRELINKTEXT)
   arm_vm_page_granular_RWNX(segPRELINKTEXTB + segSizePRELINKTEXT, segTEXTB - (segPRELINKTEXTB + segSizePRELINKTEXT), FALSE);
 } else {





  if ((segPLKDATACONSTB + segSizePLKDATACONST) < segTEXTB) {
   arm_vm_page_granular_RWNX(segPLKDATACONSTB + segSizePLKDATACONST, segTEXTB - (segPLKDATACONSTB + segSizePLKDATACONST), FALSE);
  }
 }
 arm_vm_page_granular_RNX(segTEXTB, segSizeTEXT, FALSE);





 arm_vm_page_granular_RWNX(segDATACONSTB, segSizeDATACONST, FALSE);


 arm_vm_page_granular_RWX(segTEXTEXECB, segSizeTEXTEXEC, FALSE);



 arm_vm_page_granular_RWNX(segDATAB, segSizeDATA, FALSE);

 arm_vm_page_granular_RWNX(segBOOTDATAB, segSizeBOOTDATA, TRUE);
 arm_vm_page_granular_RNX((vm_offset_t)&intstack_low_guard, PAGE_MAX_SIZE, TRUE);
 arm_vm_page_granular_RNX((vm_offset_t)&intstack_high_guard, PAGE_MAX_SIZE, TRUE);
 arm_vm_page_granular_RNX((vm_offset_t)&excepstack_high_guard, PAGE_MAX_SIZE, TRUE);

 arm_vm_page_granular_ROX(segKLDB, segSizeKLD, FALSE);
 arm_vm_page_granular_RWNX(segLINKB, segSizeLINK, FALSE);
 arm_vm_page_granular_RWNX(segPLKLINKEDITB, segSizePLKLINKEDIT, FALSE);
 arm_vm_page_granular_ROX(segLASTB, segSizeLAST, FALSE);

 arm_vm_page_granular_RWNX(segPRELINKDATAB, segSizePRELINKDATA, FALSE);

 if (segSizePLKLLVMCOV > 0)
  arm_vm_page_granular_RWNX(segPLKLLVMCOVB, segSizePLKLLVMCOV, FALSE);

 arm_vm_page_granular_RWNX(segPRELINKINFOB, segSizePRELINKINFO, FALSE);

 arm_vm_page_granular_RNX(phystokv(args->topOfKernelData), BOOTSTRAP_TABLE_SIZE, FALSE);
}
