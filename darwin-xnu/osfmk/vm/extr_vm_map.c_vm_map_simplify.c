
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
struct TYPE_4__ {struct TYPE_4__* vme_next; } ;


 int c_vm_map_simplify_called ;
 int counter (int ) ;
 int vm_map_lock (int ) ;
 scalar_t__ vm_map_lookup_entry (int ,int ,TYPE_1__**) ;
 int vm_map_simplify_entry (int ,TYPE_1__*) ;
 int vm_map_unlock (int ) ;

void
vm_map_simplify(
 vm_map_t map,
 vm_map_offset_t start)
{
 vm_map_entry_t this_entry;

 vm_map_lock(map);
 if (vm_map_lookup_entry(map, start, &this_entry)) {
  vm_map_simplify_entry(map, this_entry);
  vm_map_simplify_entry(map, this_entry->vme_next);
 }
 counter(c_vm_map_simplify_called++);
 vm_map_unlock(map);
}
