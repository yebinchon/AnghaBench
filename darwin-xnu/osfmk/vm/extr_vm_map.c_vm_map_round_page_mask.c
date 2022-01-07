
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;


 int VM_MAP_ROUND_PAGE (int ,int ) ;

vm_map_offset_t
vm_map_round_page_mask(
  vm_map_offset_t offset,
 vm_map_offset_t mask)
{
 return VM_MAP_ROUND_PAGE(offset, mask);
}
