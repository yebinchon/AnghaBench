
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_1__* vm_object_t ;
typedef TYPE_2__* vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef int uint64_t ;
typedef scalar_t__ kern_return_t ;
typedef int addr64_t ;
struct TYPE_37__ {int pmap; } ;
struct TYPE_36__ {scalar_t__ wired_count; int protection; scalar_t__ inheritance; int max_protection; scalar_t__ vme_start; scalar_t__ vme_end; scalar_t__ is_sub_map; int iokit_acct; void* is_shared; scalar_t__ needs_copy; void* use_pmap; } ;
struct TYPE_35__ {int pmap; scalar_t__ mapped_in_other_pmaps; } ;
struct TYPE_34__ {scalar_t__ copy_strategy; scalar_t__ vo_size; int true_share; scalar_t__ shadowed; } ;


 scalar_t__ FALSE ;
 scalar_t__ MEMORY_OBJECT_COPY_DELAY ;
 scalar_t__ MEMORY_OBJECT_COPY_SYMMETRIC ;
 int PMAP_NULL ;
 void* TRUE ;
 int VME_ALIAS (TYPE_3__*) ;
 TYPE_1__* VME_OBJECT (TYPE_3__*) ;
 int VME_OBJECT_SET (TYPE_3__*,TYPE_1__*) ;
 int VME_OBJECT_SHADOW (TYPE_3__*,scalar_t__) ;
 int VME_OFFSET (TYPE_3__*) ;
 int VME_OFFSET_SET (TYPE_3__*,int ) ;
 TYPE_9__* VME_SUBMAP (TYPE_3__*) ;
 scalar_t__ VM_INHERIT_NONE ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 TYPE_1__* VM_OBJECT_NULL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_WRITE ;
 int assert (int) ;
 scalar_t__ override_nx (TYPE_2__*,int ) ;
 int panic (char*) ;
 int pmap_copy (int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int pmap_has_prot_policy (int) ;
 scalar_t__ pmap_nest (int ,int ,int ,int ,int ) ;
 int pmap_protect (int ,scalar_t__,scalar_t__,int) ;
 int vm_map_entry_copy (TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* vm_map_entry_create (TYPE_2__*,scalar_t__) ;
 int vm_map_last_entry (TYPE_2__*) ;
 int vm_map_lock (TYPE_9__*) ;
 int vm_map_reference (TYPE_9__*) ;
 int vm_map_store_entry_link (TYPE_2__*,int ,TYPE_3__*,int ) ;
 int vm_map_unlock (TYPE_9__*) ;
 TYPE_1__* vm_object_allocate (scalar_t__) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_pmap_protect (TYPE_1__*,int ,scalar_t__,int ,scalar_t__,int) ;
 int vm_object_reference_locked (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;

__attribute__((used)) static void
vm_map_fork_share(
 vm_map_t old_map,
 vm_map_entry_t old_entry,
 vm_map_t new_map)
{
 vm_object_t object;
 vm_map_entry_t new_entry;
 object = VME_OBJECT(old_entry);
 if (old_entry->is_sub_map) {
  assert(old_entry->wired_count == 0);

  if(old_entry->use_pmap) {
   kern_return_t result;

   result = pmap_nest(new_map->pmap,
        (VME_SUBMAP(old_entry))->pmap,
        (addr64_t)old_entry->vme_start,
        (addr64_t)old_entry->vme_start,
        (uint64_t)(old_entry->vme_end - old_entry->vme_start));
   if(result)
    panic("vm_map_fork_share: pmap_nest failed!");
  }

 } else if (object == VM_OBJECT_NULL) {
  object = vm_object_allocate((vm_map_size_t)(old_entry->vme_end -
           old_entry->vme_start));
  VME_OFFSET_SET(old_entry, 0);
  VME_OBJECT_SET(old_entry, object);
  old_entry->use_pmap = TRUE;

 } else if (object->copy_strategy !=
     MEMORY_OBJECT_COPY_SYMMETRIC) {







  assert(! old_entry->needs_copy);
 }
 else if (old_entry->needs_copy ||
   object->shadowed ||
   (!object->true_share &&
    !old_entry->is_shared &&
    (object->vo_size >
     (vm_map_size_t)(old_entry->vme_end -
       old_entry->vme_start)))) {
  VME_OBJECT_SHADOW(old_entry,
      (vm_map_size_t) (old_entry->vme_end -
         old_entry->vme_start));







  if (!old_entry->needs_copy &&
      (old_entry->protection & VM_PROT_WRITE)) {
          vm_prot_t prot;

   assert(!pmap_has_prot_policy(old_entry->protection));

   prot = old_entry->protection & ~VM_PROT_WRITE;

   assert(!pmap_has_prot_policy(prot));

   if (override_nx(old_map, VME_ALIAS(old_entry)) && prot)
           prot |= VM_PROT_EXECUTE;


   if (old_map->mapped_in_other_pmaps) {
    vm_object_pmap_protect(
     VME_OBJECT(old_entry),
     VME_OFFSET(old_entry),
     (old_entry->vme_end -
      old_entry->vme_start),
     PMAP_NULL,
     old_entry->vme_start,
     prot);
   } else {
    pmap_protect(old_map->pmap,
          old_entry->vme_start,
          old_entry->vme_end,
          prot);
   }
  }

  old_entry->needs_copy = FALSE;
  object = VME_OBJECT(old_entry);
 }
 if(old_entry->is_sub_map) {
  vm_map_lock(VME_SUBMAP(old_entry));
  vm_map_reference(VME_SUBMAP(old_entry));
  vm_map_unlock(VME_SUBMAP(old_entry));
 } else {
  vm_object_lock(object);
  vm_object_reference_locked(object);
  if (object->copy_strategy == MEMORY_OBJECT_COPY_SYMMETRIC) {
   object->copy_strategy = MEMORY_OBJECT_COPY_DELAY;
  }
  vm_object_unlock(object);
 }






 new_entry = vm_map_entry_create(new_map, FALSE);

 vm_map_entry_copy(new_entry, old_entry);
 old_entry->is_shared = TRUE;
 new_entry->is_shared = TRUE;
 assert(!new_entry->iokit_acct);






 if (old_entry->inheritance == VM_INHERIT_NONE) {

  new_entry->protection &= ~VM_PROT_WRITE;
  new_entry->max_protection &= ~VM_PROT_WRITE;
 }







 vm_map_store_entry_link(new_map, vm_map_last_entry(new_map), new_entry,
    VM_MAP_KERNEL_FLAGS_NONE);





 if (old_entry->is_sub_map) {

 } else {
  pmap_copy(new_map->pmap, old_map->pmap, new_entry->vme_start,
     old_entry->vme_end - old_entry->vme_start,
     old_entry->vme_start);
 }
}
