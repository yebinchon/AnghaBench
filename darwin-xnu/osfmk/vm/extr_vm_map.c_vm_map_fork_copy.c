
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef int vm_map_copy_t ;
typedef int boolean_t ;
struct TYPE_7__ {scalar_t__ vme_end; scalar_t__ vme_start; int max_protection; struct TYPE_7__* vme_next; } ;


 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int TRUE ;
 int VM_MAP_COPYIN_USE_MAXPROT ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int vm_map_clip_start (int ,TYPE_1__*,scalar_t__) ;
 int vm_map_copy_insert (int ,TYPE_1__*,int ) ;
 scalar_t__ vm_map_copyin_internal (int ,scalar_t__,scalar_t__,int,int *) ;
 TYPE_1__* vm_map_last_entry (int ) ;
 int vm_map_lock (int ) ;
 int vm_map_lookup_entry (int ,scalar_t__,TYPE_1__**) ;
 int vm_map_unlock (int ) ;

__attribute__((used)) static boolean_t
vm_map_fork_copy(
 vm_map_t old_map,
 vm_map_entry_t *old_entry_p,
 vm_map_t new_map,
 int vm_map_copyin_flags)
{
 vm_map_entry_t old_entry = *old_entry_p;
 vm_map_size_t entry_size = old_entry->vme_end - old_entry->vme_start;
 vm_map_offset_t start = old_entry->vme_start;
 vm_map_copy_t copy;
 vm_map_entry_t last = vm_map_last_entry(new_map);

 vm_map_unlock(old_map);






 vm_map_copyin_flags |= VM_MAP_COPYIN_USE_MAXPROT;
 if (vm_map_copyin_internal(old_map, start, entry_size,
       vm_map_copyin_flags, &copy)
     != KERN_SUCCESS) {






  vm_map_lock(old_map);
  if (!vm_map_lookup_entry(old_map, start, &last) ||
      (last->max_protection & VM_PROT_READ) == VM_PROT_NONE) {
   last = last->vme_next;
  }
  *old_entry_p = last;
  return FALSE;
 }





 vm_map_copy_insert(new_map, last, copy);






 vm_map_lock(old_map);
 start += entry_size;
 if (! vm_map_lookup_entry(old_map, start, &last)) {
  last = last->vme_next;
 } else {
  if (last->vme_start == start) {





  } else {
   vm_map_clip_start(old_map, last, start);
  }
 }
 *old_entry_p = last;

 return TRUE;
}
