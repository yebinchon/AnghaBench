
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef void* vm_page_packed_t ;
struct TYPE_14__ {void* page_list; } ;
typedef TYPE_2__ vm_page_bucket_t ;
typedef int vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef int lck_spin_t ;
struct TYPE_13__ {scalar_t__ vmp_object; scalar_t__ vmp_offset; int vmp_hashed; void* vmp_next_m; scalar_t__ vmp_tabled; } ;


 int BUCKETS_PER_LOCK ;
 int FALSE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int TRUE ;
 int VM_KERN_MEMORY_NONE ;
 int VM_PAGE_CHECK (TYPE_1__*) ;
 TYPE_1__* VM_PAGE_NULL ;
 int VM_PAGE_OBJECT (TYPE_1__*) ;
 scalar_t__ VM_PAGE_PACK_OBJECT (int ) ;
 void* VM_PAGE_PACK_PTR (TYPE_1__*) ;
 int VM_PAGE_PAGEABLE (TYPE_1__*) ;
 scalar_t__ VM_PAGE_UNPACK_PTR (void*) ;
 int assert (int) ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int panic (char*,TYPE_1__*,int ,scalar_t__,int ,scalar_t__) ;
 int vm_object_lock_assert_exclusive (int ) ;
 int * vm_page_bucket_locks ;
 TYPE_2__* vm_page_buckets ;
 int vm_page_free_unlocked (TYPE_1__*,int ) ;
 int vm_page_hash (int ,scalar_t__) ;
 int vm_page_insert_internal (TYPE_1__*,int ,scalar_t__,int ,int ,int ,int ,int ,int *) ;
 int vm_page_queue_lock ;

void
vm_page_replace(
 vm_page_t mem,
 vm_object_t object,
 vm_object_offset_t offset)
{
 vm_page_bucket_t *bucket;
 vm_page_t found_m = VM_PAGE_NULL;
 lck_spin_t *bucket_lock;
 int hash_id;
 vm_object_lock_assert_exclusive(object);






 LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_NOTOWNED);

 assert(!VM_PAGE_PAGEABLE(mem));




 mem->vmp_object = VM_PAGE_PACK_OBJECT(object);
 mem->vmp_offset = offset;






 hash_id = vm_page_hash(object, offset);
 bucket = &vm_page_buckets[hash_id];
 bucket_lock = &vm_page_bucket_locks[hash_id / BUCKETS_PER_LOCK];

 lck_spin_lock(bucket_lock);

 if (bucket->page_list) {
  vm_page_packed_t *mp = &bucket->page_list;
  vm_page_t m = (vm_page_t)(VM_PAGE_UNPACK_PTR(*mp));

  do {



   if (m->vmp_object == mem->vmp_object && m->vmp_offset == offset) {



    *mp = m->vmp_next_m;
    m->vmp_hashed = FALSE;
    m->vmp_next_m = VM_PAGE_PACK_PTR(((void*)0));

    found_m = m;
    break;
   }
   mp = &m->vmp_next_m;
  } while ((m = (vm_page_t)(VM_PAGE_UNPACK_PTR(*mp))));

  mem->vmp_next_m = bucket->page_list;
 } else {
  mem->vmp_next_m = VM_PAGE_PACK_PTR(((void*)0));
 }



 bucket->page_list = VM_PAGE_PACK_PTR(mem);
 mem->vmp_hashed = TRUE;

 lck_spin_unlock(bucket_lock);

 if (found_m) {





  vm_page_free_unlocked(found_m, FALSE);
 }
 vm_page_insert_internal(mem, object, offset, VM_KERN_MEMORY_NONE, FALSE, FALSE, FALSE, FALSE, ((void*)0));
}
