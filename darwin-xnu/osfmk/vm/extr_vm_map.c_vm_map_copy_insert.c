
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef scalar_t__ vm_map_entry_t ;
typedef int vm_map_copy_t ;


 int VM_MAP_KERNEL_FLAGS_NONE ;
 int vm_map_copy_entry_unlink (int ,scalar_t__) ;
 scalar_t__ vm_map_copy_first_entry (int ) ;
 scalar_t__ vm_map_copy_to_entry (int ) ;
 int vm_map_copy_zone ;
 int vm_map_store_entry_link (int ,scalar_t__,scalar_t__,int ) ;
 int zfree (int ,int ) ;

__attribute__((used)) static void
vm_map_copy_insert(
 vm_map_t map,
 vm_map_entry_t after_where,
 vm_map_copy_t copy)
{
 vm_map_entry_t entry;

 while (vm_map_copy_first_entry(copy) != vm_map_copy_to_entry(copy)) {
  entry = vm_map_copy_first_entry(copy);
  vm_map_copy_entry_unlink(copy, entry);
  vm_map_store_entry_link(map, after_where, entry,
     VM_MAP_KERNEL_FLAGS_NONE);
  after_where = entry;
 }
 zfree(vm_map_copy_zone, copy);
}
