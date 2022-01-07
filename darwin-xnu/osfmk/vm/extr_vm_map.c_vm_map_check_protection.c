
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ vme_start; int protection; scalar_t__ vme_end; struct TYPE_4__* vme_next; } ;


 int FALSE ;
 int TRUE ;
 int vm_map_lock (int ) ;
 int vm_map_lookup_entry (int ,scalar_t__,TYPE_1__**) ;
 scalar_t__ vm_map_max (int ) ;
 scalar_t__ vm_map_min (int ) ;
 TYPE_1__* vm_map_to_entry (int ) ;
 int vm_map_unlock (int ) ;

boolean_t
vm_map_check_protection(vm_map_t map, vm_map_offset_t start,
   vm_map_offset_t end, vm_prot_t protection)
{
 vm_map_entry_t entry;
 vm_map_entry_t tmp_entry;

 vm_map_lock(map);

 if (start < vm_map_min(map) || end > vm_map_max(map) || start > end)
 {
  vm_map_unlock(map);
  return (FALSE);
 }

 if (!vm_map_lookup_entry(map, start, &tmp_entry)) {
  vm_map_unlock(map);
  return(FALSE);
 }

 entry = tmp_entry;

 while (start < end) {
  if (entry == vm_map_to_entry(map)) {
   vm_map_unlock(map);
   return(FALSE);
  }





  if (start < entry->vme_start) {
   vm_map_unlock(map);
   return(FALSE);
  }





  if ((entry->protection & protection) != protection) {
   vm_map_unlock(map);
   return(FALSE);
  }



  start = entry->vme_end;
  entry = entry->vme_next;
 }
 vm_map_unlock(map);
 return(TRUE);
}
