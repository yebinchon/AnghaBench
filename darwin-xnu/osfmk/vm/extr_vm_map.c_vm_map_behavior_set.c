
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef int vm_behavior_t ;
typedef int kern_return_t ;
struct TYPE_6__ {scalar_t__ vme_start; int behavior; struct TYPE_6__* vme_next; int zero_wired_pages; int use_pmap; int is_sub_map; } ;


 int KERN_INVALID_ADDRESS ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NO_SPACE ;
 int KERN_SUCCESS ;
 int TRUE ;
 int VM_SYNC_CONTIGUOUS ;
 int VM_SYNC_DEACTIVATE ;
 int VM_SYNC_KILLPAGES ;
 int XPR (int ,char*,int ,scalar_t__,scalar_t__,int,int ) ;
 int XPR_VM_MAP ;
 int assert (int) ;
 int vm_map_can_reuse (int ,scalar_t__,scalar_t__) ;
 int vm_map_clip_end (int ,TYPE_1__*,scalar_t__) ;
 int vm_map_clip_start (int ,TYPE_1__*,scalar_t__) ;
 int vm_map_lock (int ) ;
 scalar_t__ vm_map_max (int ) ;
 scalar_t__ vm_map_min (int ) ;
 int vm_map_msync (int ,scalar_t__,scalar_t__,int) ;
 int vm_map_pageout (int ,scalar_t__,scalar_t__) ;
 int vm_map_range_check (int ,scalar_t__,scalar_t__,TYPE_1__**) ;
 int vm_map_reusable_pages (int ,scalar_t__,scalar_t__) ;
 int vm_map_reuse_pages (int ,scalar_t__,scalar_t__) ;
 TYPE_1__* vm_map_to_entry (int ) ;
 int vm_map_unlock (int ) ;
 int vm_map_willneed (int ,scalar_t__,scalar_t__) ;

kern_return_t
vm_map_behavior_set(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end,
 vm_behavior_t new_behavior)
{
 vm_map_entry_t entry;
 vm_map_entry_t temp_entry;

 XPR(XPR_VM_MAP,
     "vm_map_behavior_set, 0x%X start 0x%X end 0x%X behavior %d",
     map, start, end, new_behavior, 0);

 if (start > end ||
     start < vm_map_min(map) ||
     end > vm_map_max(map)) {
  return KERN_NO_SPACE;
 }

 switch (new_behavior) {







 case 138:
 case 134:
 case 130:
 case 131:
 case 128:
  vm_map_lock(map);
  if (vm_map_range_check(map, start, end, &temp_entry)) {
   entry = temp_entry;
   vm_map_clip_start(map, entry, start);
  }
  else {
   vm_map_unlock(map);
   return(KERN_INVALID_ADDRESS);
  }

  while ((entry != vm_map_to_entry(map)) && (entry->vme_start < end)) {
   vm_map_clip_end(map, entry, end);
   if (entry->is_sub_map) {
    assert(!entry->use_pmap);
   }

   if( new_behavior == 128 ) {
    entry->zero_wired_pages = TRUE;
   } else {
    entry->behavior = new_behavior;
   }
   entry = entry->vme_next;
  }

  vm_map_unlock(map);
  break;







 case 129:
  return vm_map_willneed(map, start, end);

 case 137:
  return vm_map_msync(map, start, end - start, VM_SYNC_DEACTIVATE | VM_SYNC_CONTIGUOUS);

 case 136:
  return vm_map_msync(map, start, end - start, VM_SYNC_KILLPAGES | VM_SYNC_CONTIGUOUS);

 case 133:
  return vm_map_reusable_pages(map, start, end);

 case 132:
  return vm_map_reuse_pages(map, start, end);

 case 139:
  return vm_map_can_reuse(map, start, end);






 default:
  return(KERN_INVALID_ARGUMENT);
 }

 return(KERN_SUCCESS);
}
