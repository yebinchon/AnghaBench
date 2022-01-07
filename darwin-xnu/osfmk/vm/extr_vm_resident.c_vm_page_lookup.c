
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef scalar_t__ vm_page_queue_entry_t ;
typedef scalar_t__ vm_page_object_t ;
struct TYPE_16__ {int page_list; } ;
typedef TYPE_2__ vm_page_bucket_t ;
typedef TYPE_3__* vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef int uint64_t ;
typedef int lck_spin_t ;
struct TYPE_18__ {int vpl_miss; int vpl_hit; int vpl_fast_elapsed; int vpl_fast; int vpl_slow_elapsed; int vpl_slow; int vpl_bucket_NULL; int vpl_hit_hint_prev; int vpl_hit_hint_next; int vpl_hit_hint; int vpl_empty_obj; int vpl_total; } ;
struct TYPE_17__ {scalar_t__ resident_page_count; TYPE_1__* memq_hint; int memq; } ;
struct TYPE_15__ {scalar_t__ vmp_offset; scalar_t__ vmp_object; int vmp_next_m; int vmp_listq; } ;


 int BUCKETS_PER_LOCK ;
 int OSAddAtomic64 (int,int *) ;
 int VM_PAGE_CHECK (TYPE_1__*) ;
 scalar_t__ VM_PAGE_HASH_LOOKUP_THRESHOLD ;
 TYPE_1__* VM_PAGE_NULL ;
 TYPE_3__* VM_PAGE_OBJECT (TYPE_1__*) ;
 scalar_t__ VM_PAGE_PACK_OBJECT (TYPE_3__*) ;
 scalar_t__ VM_PAGE_UNPACK_PTR (int ) ;
 int assert (int) ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int mach_absolute_time () ;
 int vm_object_lock_assert_held (TYPE_3__*) ;
 int * vm_page_bucket_locks ;
 TYPE_2__* vm_page_buckets ;
 int vm_page_hash (TYPE_3__*,scalar_t__) ;
 TYPE_4__ vm_page_lookup_stats ;
 scalar_t__ vm_page_queue_end (int *,scalar_t__) ;
 scalar_t__ vm_page_queue_first (int *) ;
 scalar_t__ vm_page_queue_next (int *) ;
 scalar_t__ vm_page_queue_prev (int *) ;

vm_page_t
vm_page_lookup(
 vm_object_t object,
 vm_object_offset_t offset)
{
 vm_page_t mem;
 vm_page_bucket_t *bucket;
 vm_page_queue_entry_t qe;
 lck_spin_t *bucket_lock = ((void*)0);
 int hash_id;





 vm_object_lock_assert_held(object);

 if (object->resident_page_count == 0) {



  return (VM_PAGE_NULL);
 }

 mem = object->memq_hint;

 if (mem != VM_PAGE_NULL) {
  assert(VM_PAGE_OBJECT(mem) == object);

  if (mem->vmp_offset == offset) {



   return (mem);
  }
  qe = (vm_page_queue_entry_t)vm_page_queue_next(&mem->vmp_listq);

  if (! vm_page_queue_end(&object->memq, qe)) {
   vm_page_t next_page;

   next_page = (vm_page_t)((uintptr_t)qe);
   assert(VM_PAGE_OBJECT(next_page) == object);

   if (next_page->vmp_offset == offset) {
    object->memq_hint = next_page;



    return (next_page);
   }
  }
  qe = (vm_page_queue_entry_t)vm_page_queue_prev(&mem->vmp_listq);

  if (! vm_page_queue_end(&object->memq, qe)) {
   vm_page_t prev_page;

   prev_page = (vm_page_t)((uintptr_t)qe);
   assert(VM_PAGE_OBJECT(prev_page) == object);

   if (prev_page->vmp_offset == offset) {
    object->memq_hint = prev_page;



    return (prev_page);
   }
  }
 }



 hash_id = vm_page_hash(object, offset);
 bucket = &vm_page_buckets[hash_id];
 if (!bucket->page_list) {



         return (VM_PAGE_NULL);
 }




 if (object->resident_page_count <= VM_PAGE_HASH_LOOKUP_THRESHOLD) {




  mem = (vm_page_t)vm_page_queue_first(&object->memq);

  while (!vm_page_queue_end(&object->memq, (vm_page_queue_entry_t)mem)) {

   if (mem->vmp_offset == offset)
    break;

   mem = (vm_page_t)vm_page_queue_next(&mem->vmp_listq);
  }
  if (vm_page_queue_end(&object->memq, (vm_page_queue_entry_t)mem))
   mem = ((void*)0);
 } else {
  vm_page_object_t packed_object;

  packed_object = VM_PAGE_PACK_OBJECT(object);

  bucket_lock = &vm_page_bucket_locks[hash_id / BUCKETS_PER_LOCK];

  lck_spin_lock(bucket_lock);

  for (mem = (vm_page_t)(VM_PAGE_UNPACK_PTR(bucket->page_list));
       mem != VM_PAGE_NULL;
       mem = (vm_page_t)(VM_PAGE_UNPACK_PTR(mem->vmp_next_m))) {







   if ((mem->vmp_object == packed_object) && (mem->vmp_offset == offset))
    break;
  }
  lck_spin_unlock(bucket_lock);
 }
 if (mem != VM_PAGE_NULL) {
  assert(VM_PAGE_OBJECT(mem) == object);

  object->memq_hint = mem;
 }
 return (mem);
}
