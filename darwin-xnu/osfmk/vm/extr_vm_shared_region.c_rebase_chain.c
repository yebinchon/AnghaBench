
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_shared_region_slide_info_entry_v2_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ KERN_SUCCESS ;
 int printf (char*,int,int,int) ;
 scalar_t__ rebase_chain_32 (int *,int,int,int ) ;
 scalar_t__ rebase_chain_64 (int *,int,int,int ) ;

__attribute__((used)) static kern_return_t
rebase_chain(
 boolean_t is_64,
 uint32_t pageIndex,
 uint8_t *page_content,
 uint16_t start_offset,
 uint32_t slide_amount,
 vm_shared_region_slide_info_entry_v2_t s_info)
{
 kern_return_t kr;
 if (is_64) {
  kr = rebase_chain_64(page_content, start_offset, slide_amount, s_info);
 } else {
  kr = rebase_chain_32(page_content, start_offset, slide_amount, s_info);
 }

 if (kr != KERN_SUCCESS) {
  printf("vm_shared_region_slide_page() offset overflow: pageIndex=%u, start_offset=%u, slide_amount=%u\n",
         pageIndex, start_offset, slide_amount);
 }
 return kr;
}
