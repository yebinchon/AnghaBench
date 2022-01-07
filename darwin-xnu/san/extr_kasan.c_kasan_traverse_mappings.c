
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* pmap_traverse_callback ) (uintptr_t,uintptr_t,void*) ;


 int HW_PAGE_MASK ;
 uintptr_t HW_PAGE_SIZE ;
 int SHADOW_FOR_ADDRESS (int ) ;
 int VM_MAX_KERNEL_ADDRESS ;
 int VM_MIN_KERNEL_AND_KEXT_ADDRESS ;
 scalar_t__ kasan_is_shadow_mapped (uintptr_t) ;
 uintptr_t vm_map_round_page (uintptr_t,int ) ;
 uintptr_t vm_map_trunc_page (uintptr_t,int ) ;

int
kasan_traverse_mappings(pmap_traverse_callback cb, void *ctx)
{
 uintptr_t shadow_base = (uintptr_t)SHADOW_FOR_ADDRESS(VM_MIN_KERNEL_AND_KEXT_ADDRESS);
 uintptr_t shadow_top = (uintptr_t)SHADOW_FOR_ADDRESS(VM_MAX_KERNEL_ADDRESS);
 shadow_base = vm_map_trunc_page(shadow_base, HW_PAGE_MASK);
 shadow_top = vm_map_round_page(shadow_top, HW_PAGE_MASK);

 uintptr_t start = 0, end = 0;

 for (uintptr_t addr = shadow_base; addr < shadow_top; addr += HW_PAGE_SIZE) {
  if (kasan_is_shadow_mapped(addr)) {
   if (start == 0) {
    start = addr;
   }
   end = addr + HW_PAGE_SIZE;
  } else if (start && end) {
   cb(start, end, ctx);
   start = end = 0;
  }
 }

 if (start && end) {
  cb(start, end, ctx);
 }

 return 0;
}
