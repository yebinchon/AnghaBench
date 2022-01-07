
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int kern_return_t ;
struct TYPE_14__ {int can_reuse_success; int can_reuse_failure; } ;
struct TYPE_13__ {scalar_t__ vme_start; struct TYPE_13__* vme_next; } ;
struct TYPE_12__ {scalar_t__ pmap; } ;


 int KERN_INVALID_ADDRESS ;
 int KERN_SUCCESS ;
 int assert (int) ;
 scalar_t__ kernel_pmap ;
 int vm_map_entry_is_reusable (TYPE_2__*) ;
 int vm_map_lock_read (TYPE_1__*) ;
 int vm_map_range_check (TYPE_1__*,scalar_t__,scalar_t__,TYPE_2__**) ;
 TYPE_2__* vm_map_to_entry (TYPE_1__*) ;
 int vm_map_unlock_read (TYPE_1__*) ;
 TYPE_3__ vm_page_stats_reusable ;

__attribute__((used)) static kern_return_t
vm_map_can_reuse(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end)
{
 vm_map_entry_t entry;






 vm_map_lock_read(map);
 assert(map->pmap != kernel_pmap);







 if (!vm_map_range_check(map, start, end, &entry)) {
  vm_map_unlock_read(map);
  vm_page_stats_reusable.can_reuse_failure++;
  return KERN_INVALID_ADDRESS;
 }




 for (; entry != vm_map_to_entry(map) && entry->vme_start < end;
      entry = entry->vme_next) {



  if (! vm_map_entry_is_reusable(entry)) {
   vm_map_unlock_read(map);
   vm_page_stats_reusable.can_reuse_failure++;
   return KERN_INVALID_ADDRESS;
  }
 }

 vm_map_unlock_read(map);
 vm_page_stats_reusable.can_reuse_success++;
 return KERN_SUCCESS;
}
