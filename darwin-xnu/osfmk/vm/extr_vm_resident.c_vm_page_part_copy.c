
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;


 int VM_PAGE_CHECK (int ) ;
 int VM_PAGE_GET_PHYS_PAGE (int ) ;
 int pmap_copy_part_page (int ,int ,int ,int ,int ) ;

void
vm_page_part_copy(
 vm_page_t src_m,
 vm_offset_t src_pa,
 vm_page_t dst_m,
 vm_offset_t dst_pa,
 vm_size_t len)
{
 pmap_copy_part_page(VM_PAGE_GET_PHYS_PAGE(src_m), src_pa,
       VM_PAGE_GET_PHYS_PAGE(dst_m), dst_pa, len);
}
