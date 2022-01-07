
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_size_t ;
typedef int vm_map_offset_t ;
typedef int boolean_t ;


 int ARM_TT_L2_OFFMASK ;
 int FALSE ;
 int LOW_GLOBAL_BASE_ADDRESS ;
 int PAGE_MASK ;
 int TEST_PAGE_SIZE_4K ;
 int TRUE ;
 int VM_MAX_KERNEL_ADDRESS ;
 int VM_MIN_KERNEL_ADDRESS ;
 int VREGION1_SIZE ;
 int VREGION1_START ;
 int gVirtBase ;
 int virtual_space_start ;

boolean_t
pmap_virtual_region(
 unsigned int region_select,
 vm_map_offset_t *startp,
 vm_map_size_t *size
)
{
 boolean_t ret = FALSE;
 if (region_select == 0) {





  if (!TEST_PAGE_SIZE_4K) {
   *startp = gVirtBase & 0xFFFFFFFFFE000000;
   *size = ((virtual_space_start-(gVirtBase & 0xFFFFFFFFFE000000)) + ~0xFFFFFFFFFE000000) & 0xFFFFFFFFFE000000;
  } else {
   *startp = gVirtBase & 0xFFFFFFFFFF800000;
   *size = ((virtual_space_start-(gVirtBase & 0xFFFFFFFFFF800000)) + ~0xFFFFFFFFFF800000) & 0xFFFFFFFFFF800000;
  }

  ret = TRUE;
 }
 if (region_select == 1) {
  *startp = VREGION1_START;
  *size = VREGION1_SIZE;
  ret = TRUE;
 }
 return ret;
}
