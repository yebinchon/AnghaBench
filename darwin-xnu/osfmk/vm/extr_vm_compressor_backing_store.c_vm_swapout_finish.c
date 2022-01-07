
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_2__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {int c_swap_handle; scalar_t__ c_buffer; } ;
struct TYPE_11__ {scalar_t__ c_generation_id; int c_bytes_used; scalar_t__ c_overage_swap; int c_lock; scalar_t__ c_busy_swapping; scalar_t__ c_busy; int c_on_minorcompact_q; TYPE_1__ c_store; } ;


 int C_ON_AGE_Q ;
 int C_ON_SWAPPEDOUTSPARSE_Q ;
 int C_ON_SWAPPEDOUT_Q ;
 scalar_t__ C_SEG_ONDISK_IS_SPARSE (TYPE_2__*) ;
 scalar_t__ C_SEG_UNUSED_BYTES (TYPE_2__*) ;
 int C_SEG_WAKEUP_DONE (TYPE_2__*) ;
 scalar_t__ FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int KMA_COMPRESSOR ;
 int OSAddAtomic64 (int,int *) ;
 int PAGE_REPLACEMENT_DISALLOWED (scalar_t__) ;
 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ TRUE ;
 int VM_STAT_INCR_BY (int ,int) ;
 int assert (scalar_t__) ;
 int * c_list_lock ;
 int c_overage_swapped_count ;
 int c_seg_need_delayed_compaction (TYPE_2__*,scalar_t__) ;
 int c_seg_switch_state (TYPE_2__*,int,scalar_t__) ;
 int compressor_bytes_used ;
 int compressor_map ;
 scalar_t__ first_c_segment_to_warm_generation_id ;
 scalar_t__ hibernate_flushing ;
 int kernel_memory_depopulate (int ,int ,int,int ) ;
 scalar_t__ last_c_segment_to_warm_generation_id ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 int swapouts ;
 int vm_swap_decrypt (TYPE_2__*) ;

__attribute__((used)) static void
vm_swapout_finish(c_segment_t c_seg, uint64_t f_offset, uint32_t size, kern_return_t kr)
{

 PAGE_REPLACEMENT_DISALLOWED(TRUE);

 if (kr == KERN_SUCCESS) {
         kernel_memory_depopulate(compressor_map, (vm_offset_t)c_seg->c_store.c_buffer, size, KMA_COMPRESSOR);
 }





 lck_mtx_lock_spin_always(c_list_lock);
 lck_mtx_lock_spin_always(&c_seg->c_lock);

 if (kr == KERN_SUCCESS) {
         int new_state = C_ON_SWAPPEDOUT_Q;
  boolean_t insert_head = FALSE;

  if (hibernate_flushing == TRUE) {
          if (c_seg->c_generation_id >= first_c_segment_to_warm_generation_id &&
             c_seg->c_generation_id <= last_c_segment_to_warm_generation_id)
           insert_head = TRUE;
  } else if (C_SEG_ONDISK_IS_SPARSE(c_seg))
          new_state = C_ON_SWAPPEDOUTSPARSE_Q;

  c_seg_switch_state(c_seg, new_state, insert_head);

  c_seg->c_store.c_swap_handle = f_offset;

  VM_STAT_INCR_BY(swapouts, size >> PAGE_SHIFT);

  if (c_seg->c_bytes_used)
          OSAddAtomic64(-c_seg->c_bytes_used, &compressor_bytes_used);
 } else {
         if (c_seg->c_overage_swap == TRUE) {
          c_seg->c_overage_swap = FALSE;
   c_overage_swapped_count--;
  }
  c_seg_switch_state(c_seg, C_ON_AGE_Q, FALSE);

  if (!c_seg->c_on_minorcompact_q && C_SEG_UNUSED_BYTES(c_seg) >= PAGE_SIZE)
          c_seg_need_delayed_compaction(c_seg, TRUE);
 }
 assert(c_seg->c_busy_swapping);
 assert(c_seg->c_busy);

 c_seg->c_busy_swapping = 0;
 lck_mtx_unlock_always(c_list_lock);

 C_SEG_WAKEUP_DONE(c_seg);
 lck_mtx_unlock_always(&c_seg->c_lock);

 PAGE_REPLACEMENT_DISALLOWED(FALSE);
}
