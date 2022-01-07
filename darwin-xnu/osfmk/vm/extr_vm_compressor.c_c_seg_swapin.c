
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int int32_t ;
typedef TYPE_2__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {int * c_buffer; int c_swap_handle; } ;
struct TYPE_13__ {int c_busy_swapping; scalar_t__ cseg_swap_size; scalar_t__ cseg_hash; int c_lock; int c_bytes_used; TYPE_1__ c_store; int c_mysegno; int c_populated_offset; } ;


 scalar_t__ C_SEG_BUFFER_ADDRESS (int ) ;
 int C_SEG_BUSY (TYPE_2__*) ;
 int C_SEG_IS_ONDISK (TYPE_2__*) ;
 int C_SEG_OFFSET_TO_BYTES (int ) ;
 int C_SEG_WAKEUP_DONE (TYPE_2__*) ;
 scalar_t__ FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int KMA_COMPRESSOR ;
 int OSAddAtomic64 (int ,int *) ;
 int PAGE_REPLACEMENT_DISALLOWED (scalar_t__) ;
 scalar_t__ TRUE ;
 int VM_KERN_MEMORY_COMPRESSOR ;
 int assert (int ) ;
 scalar_t__ c_seg_minor_compaction_and_unlock (TYPE_2__*,scalar_t__) ;
 int c_seg_swapin_requeue (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;
 int c_seg_trim_tail (TYPE_2__*) ;
 int clear_thread_rwlock_boost () ;
 int compressor_bytes_used ;
 int compressor_map ;
 int kernel_memory_depopulate (int ,scalar_t__,scalar_t__,int ) ;
 int kernel_memory_populate (int ,scalar_t__,scalar_t__,int ,int ) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 int panic (char*) ;
 scalar_t__ round_page_32 (int ) ;
 int set_thread_rwlock_boost () ;
 int vm_swap_decrypt (TYPE_2__*) ;
 scalar_t__ vm_swap_get (TYPE_2__*,int ,scalar_t__) ;
 scalar_t__ vmc_hash (char*,int) ;

int
c_seg_swapin(c_segment_t c_seg, boolean_t force_minor_compaction, boolean_t age_on_swapin_q)
{
 vm_offset_t addr = 0;
 uint32_t io_size = 0;
 uint64_t f_offset;

 assert(C_SEG_IS_ONDISK(c_seg));


 c_seg_trim_tail(c_seg);

 io_size = round_page_32(C_SEG_OFFSET_TO_BYTES(c_seg->c_populated_offset));
 f_offset = c_seg->c_store.c_swap_handle;

 C_SEG_BUSY(c_seg);
 c_seg->c_busy_swapping = 1;
 set_thread_rwlock_boost();
 lck_mtx_unlock_always(&c_seg->c_lock);

 PAGE_REPLACEMENT_DISALLOWED(FALSE);

 addr = (vm_offset_t)C_SEG_BUFFER_ADDRESS(c_seg->c_mysegno);
 c_seg->c_store.c_buffer = (int32_t*) addr;

 kernel_memory_populate(compressor_map, addr, io_size, KMA_COMPRESSOR, VM_KERN_MEMORY_COMPRESSOR);

 if (vm_swap_get(c_seg, f_offset, io_size) != KERN_SUCCESS) {
  PAGE_REPLACEMENT_DISALLOWED(TRUE);

  kernel_memory_depopulate(compressor_map, addr, io_size, KMA_COMPRESSOR);

  c_seg_swapin_requeue(c_seg, FALSE, TRUE, age_on_swapin_q);
 } else {
  PAGE_REPLACEMENT_DISALLOWED(TRUE);

  c_seg_swapin_requeue(c_seg, TRUE, force_minor_compaction == TRUE ? FALSE : TRUE, age_on_swapin_q);

  OSAddAtomic64(c_seg->c_bytes_used, &compressor_bytes_used);

  if (force_minor_compaction == TRUE) {
   if (c_seg_minor_compaction_and_unlock(c_seg, FALSE)) {







    clear_thread_rwlock_boost();
    return (1);
   }

   lck_mtx_lock_spin_always(&c_seg->c_lock);
  }
 }
 C_SEG_WAKEUP_DONE(c_seg);





 clear_thread_rwlock_boost();

 return (0);
}
