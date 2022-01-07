
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ vme_start; scalar_t__ vme_end; int vme_atomic; } ;


 int panic (char*,int ,void*,...) ;
 int vm_map_lookup_entry (int ,scalar_t__,TYPE_1__**) ;

__attribute__((used)) static vm_size_t
vm_map_lookup_kalloc_entry_locked(
  vm_map_t map,
  void *addr)
{
 boolean_t ret;
 vm_map_entry_t vm_entry = ((void*)0);

 ret = vm_map_lookup_entry(map, (vm_map_offset_t)addr, &vm_entry);
 if (!ret) {
  panic("Attempting to lookup/free an address not allocated via kalloc! (vm_map_lookup_entry() failed map: %p, addr: %p)\n",
   map, addr);
 }
 if (vm_entry->vme_start != (vm_map_offset_t)addr) {
  panic("Attempting to lookup/free the middle of a kalloc'ed element! (map: %p, addr: %p, entry: %p)\n",
   map, addr, vm_entry);
 }
 if (!vm_entry->vme_atomic) {
  panic("Attempting to lookup/free an address not managed by kalloc! (map: %p, addr: %p, entry: %p)\n",
   map, addr, vm_entry);
 }
 return (vm_entry->vme_end - vm_entry->vme_start);
}
