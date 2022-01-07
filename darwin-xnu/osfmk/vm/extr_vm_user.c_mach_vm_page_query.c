
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_map_t ;
typedef int mach_vm_offset_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int PAGE_MASK ;
 scalar_t__ VM_MAP_NULL ;
 int vm_map_page_query_internal (scalar_t__,int ,int*,int*) ;
 int vm_map_trunc_page (int ,int ) ;

kern_return_t
mach_vm_page_query(
 vm_map_t map,
 mach_vm_offset_t offset,
 int *disposition,
 int *ref_count)
{
 if (VM_MAP_NULL == map)
  return KERN_INVALID_ARGUMENT;

 return vm_map_page_query_internal(
  map,
  vm_map_trunc_page(offset, PAGE_MASK),
  disposition, ref_count);
}
