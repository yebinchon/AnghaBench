
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;


 int kalloc_map ;
 scalar_t__ kalloc_map_max ;
 scalar_t__ kalloc_map_min ;
 int kernel_map ;
 int vm_map_lock_read (int ) ;
 scalar_t__ vm_map_lookup_kalloc_entry_locked (int ,void*) ;
 int vm_map_unlock_read (int ) ;
 scalar_t__ zone_element_size (void*,int *) ;

vm_size_t
kalloc_size(
  void *addr)
{
 vm_map_t map;
 vm_size_t size;

 size = zone_element_size(addr, ((void*)0));
 if (size) {
  return size;
 }
 if (((vm_offset_t)addr >= kalloc_map_min) && ((vm_offset_t)addr < kalloc_map_max)) {
  map = kalloc_map;
 } else {
  map = kernel_map;
 }
 vm_map_lock_read(map);
 size = vm_map_lookup_kalloc_entry_locked(map, addr);
 vm_map_unlock_read(map);
 return size;
}
