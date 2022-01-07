
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef unsigned int uint64_t ;
typedef int boolean_t ;
struct TYPE_8__ {scalar_t__ purgable; scalar_t__ copy; scalar_t__ copy_strategy; scalar_t__ resident_page_count; scalar_t__ wired_page_count; scalar_t__ activity_in_progress; scalar_t__ paging_in_progress; int * pager; } ;
typedef int SInt32 ;


 int C_DONT_BLOCK ;
 int DBG_MACH_VM ;
 int FALSE ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int ,int ,unsigned int,unsigned int,int ,int ) ;
 int MACHDBG_CODE (int ,int ) ;
 scalar_t__ MEMORY_OBJECT_COPY_NONE ;
 int OBJECT_PURGE_ONE ;
 int OSAddAtomic (unsigned int,int *) ;
 int REAP_PURGEABLE ;
 int TRUE ;
 int VM_CONFIG_COMPRESSOR_IS_PRESENT ;
 int VM_KERNEL_UNSLIDE_OR_PERM (TYPE_1__*) ;
 scalar_t__ VM_OBJECT_NULL ;
 scalar_t__ VM_PURGABLE_DENY ;
 scalar_t__ VM_PURGABLE_EMPTY ;
 scalar_t__ VM_PURGABLE_VOLATILE ;
 int assert (int) ;
 int vm_compressor_pager_count (int *,unsigned int,int ,TYPE_1__*) ;
 unsigned int vm_compressor_pager_get_count (int *) ;
 unsigned int vm_compressor_pager_reap_pages (int *,int) ;
 int vm_object_lock_assert_exclusive (TYPE_1__*) ;
 int vm_object_owner_compressed_update (TYPE_1__*,unsigned int) ;
 int vm_object_reap_pages (TYPE_1__*,int ) ;
 unsigned int vm_page_purgeable_count ;
 scalar_t__ vm_page_purgeable_wired_count ;

uint64_t
vm_object_purge(vm_object_t object, int flags)
{
 unsigned int object_page_count = 0, pgcount = 0;
 uint64_t total_purged_pgcount = 0;
 boolean_t skipped_object = FALSE;

        vm_object_lock_assert_exclusive(object);

 if (object->purgable == VM_PURGABLE_DENY)
  return 0;

 assert(object->copy == VM_OBJECT_NULL);
 assert(object->copy_strategy == MEMORY_OBJECT_COPY_NONE);
 if (object->purgable == VM_PURGABLE_VOLATILE) {
  unsigned int delta;
  assert(object->resident_page_count >=
         object->wired_page_count);
  delta = (object->resident_page_count -
    object->wired_page_count);
  if (delta != 0) {
   assert(vm_page_purgeable_count >=
          delta);
   OSAddAtomic(-delta,
        (SInt32 *)&vm_page_purgeable_count);
  }
  if (object->wired_page_count != 0) {
   assert(vm_page_purgeable_wired_count >=
          object->wired_page_count);
   OSAddAtomic(-object->wired_page_count,
        (SInt32 *)&vm_page_purgeable_wired_count);
  }
  object->purgable = VM_PURGABLE_EMPTY;
 }
 assert(object->purgable == VM_PURGABLE_EMPTY);

 object_page_count = object->resident_page_count;

 vm_object_reap_pages(object, REAP_PURGEABLE);

 if (object->resident_page_count >= object_page_count) {
  total_purged_pgcount = 0;
 } else {
  total_purged_pgcount = object_page_count - object->resident_page_count;
 }

 if (object->pager != ((void*)0)) {

  assert(VM_CONFIG_COMPRESSOR_IS_PRESENT);

  if (object->activity_in_progress == 0 &&
      object->paging_in_progress == 0) {
   pgcount = vm_compressor_pager_get_count(object->pager);
   if (pgcount) {
    pgcount = vm_compressor_pager_reap_pages(object->pager, flags);
    vm_compressor_pager_count(object->pager,
         -pgcount,
         FALSE,
         object);
    vm_object_owner_compressed_update(object,
          -pgcount);
   }
   if ( !(flags & C_DONT_BLOCK)) {
    assert(vm_compressor_pager_get_count(object->pager)
           == 0);
   }
  } else {
   skipped_object = TRUE;
  }
 }

 vm_object_lock_assert_exclusive(object);

 total_purged_pgcount += pgcount;

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE, (MACHDBG_CODE(DBG_MACH_VM, OBJECT_PURGE_ONE)),
         VM_KERNEL_UNSLIDE_OR_PERM(object),
         object_page_count,
         total_purged_pgcount,
         skipped_object,
         0);

 return total_purged_pgcount;
}
