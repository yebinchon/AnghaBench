
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int queue_entry_t ;
typedef int event_t ;
typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;
typedef TYPE_1__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_14__ {int count_of_swapouts; int wasted_space_in_swapouts; int count_of_freed_segs; } ;
struct TYPE_13__ {scalar_t__ c_state; scalar_t__ c_generation_id; int c_busy; scalar_t__ c_creation_ts; int c_lock; scalar_t__ c_bytes_used; scalar_t__ c_overage_swap; int c_on_minorcompact_q; int c_age_list; } ;


 scalar_t__ C_ON_AGE_Q ;
 int C_ON_MAJORCOMPACT_Q ;
 int C_ON_SWAPOUT_Q ;
 scalar_t__ C_SEG_BUFSIZE ;
 int C_SEG_BUSY (TYPE_1__*) ;
 int C_SEG_WAKEUP_DONE (TYPE_1__*) ;
 scalar_t__ C_SWAPOUT_LIMIT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_HIBERNATE ;
 scalar_t__ FALSE ;
 int HIBLOG (char*) ;
 int IOKDBG_CODE (int ,int) ;
 int KERNEL_DEBUG_CONSTANT (int,scalar_t__,scalar_t__,int ,int ,int ) ;
 int NSEC_PER_USEC ;
 int PAGE_REPLACEMENT_DISALLOWED (scalar_t__) ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_INTERRUPTIBLE ;
 scalar_t__ TRUE ;
 scalar_t__ VM_CONFIG_SWAP_IS_ACTIVE ;
 int VM_CONFIG_SWAP_IS_PRESENT ;
 int assert (int) ;
 int assert_wait_timeout (int ,int ,int,int) ;
 int c_age_list_head ;
 scalar_t__ c_generation_id_flush_barrier ;
 int * c_list_lock ;
 scalar_t__ c_overage_swapped_count ;
 scalar_t__ c_overage_swapped_limit ;
 scalar_t__ c_seg_do_minor_compaction_and_unlock (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ c_seg_major_compact (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ c_seg_major_compact_ok (TYPE_1__*,TYPE_1__*) ;
 TYPE_5__ c_seg_major_compact_stats ;
 scalar_t__ c_seg_minor_compaction_and_unlock (TYPE_1__*,scalar_t__) ;
 int c_seg_switch_state (TYPE_1__*,int ,scalar_t__) ;
 int c_seg_wait_on_busy (TYPE_1__*) ;
 scalar_t__ c_segment_warmup_count ;
 scalar_t__ c_swapout_count ;
 int c_swapout_list_head ;
 int c_swappedout_list_head ;
 int clock_get_system_nanotime (scalar_t__*,int *) ;
 scalar_t__ compaction_swapper_abort ;
 int compaction_swapper_running ;
 scalar_t__ compressor_needs_to_swap () ;
 int do_fastwake_warmup (int *,scalar_t__) ;
 scalar_t__ fastwake_warmup ;
 scalar_t__ first_c_segment_to_warm_generation_id ;
 scalar_t__ hibernate_flushing ;
 scalar_t__ hibernate_flushing_deadline ;
 scalar_t__ hibernate_in_progress_with_pinned_swap ;
 scalar_t__ hibernate_no_swapspace ;
 scalar_t__ hibernate_should_abort () ;
 int last_c_segment_to_warm_generation_id ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 scalar_t__ queue_empty (int *) ;
 scalar_t__ queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 int thread_block (int ) ;
 int thread_wakeup (int ) ;
 int vm_compressor_age_swapped_in_segments (scalar_t__) ;
 int vm_compressor_do_delayed_compactions (scalar_t__) ;
 int vm_compressor_take_paging_space_action () ;
 scalar_t__ vm_ripe_target_age ;
 scalar_t__ vm_swap_files_pinned () ;
 scalar_t__ vm_swap_low_on_space () ;
 scalar_t__ vm_swapfile_total_segs_alloced ;
 scalar_t__ vm_swapfile_total_segs_used ;
 scalar_t__ vm_swapout_ripe_segments ;

void
vm_compressor_compact_and_swap(boolean_t flush_all)
{
 c_segment_t c_seg, c_seg_next;
 boolean_t keep_compacting;
 clock_sec_t now;
 clock_nsec_t nsec;


 if (fastwake_warmup == TRUE) {
  uint64_t starting_warmup_count;

  starting_warmup_count = c_segment_warmup_count;

  KERNEL_DEBUG_CONSTANT(IOKDBG_CODE(DBG_HIBERNATE, 11) | DBG_FUNC_START, c_segment_warmup_count,
          first_c_segment_to_warm_generation_id, last_c_segment_to_warm_generation_id, 0, 0);
  do_fastwake_warmup(&c_swappedout_list_head, FALSE);
  KERNEL_DEBUG_CONSTANT(IOKDBG_CODE(DBG_HIBERNATE, 11) | DBG_FUNC_END, c_segment_warmup_count, c_segment_warmup_count - starting_warmup_count, 0, 0, 0);

  fastwake_warmup = FALSE;
 }
 vm_compressor_do_delayed_compactions(flush_all);

 vm_compressor_age_swapped_in_segments(flush_all);







 clock_get_system_nanotime(&now, &nsec);

 while (!queue_empty(&c_age_list_head) && compaction_swapper_abort == 0) {

  if (hibernate_flushing == TRUE) {
   clock_sec_t sec;

   if (hibernate_should_abort()) {
    HIBLOG("vm_compressor_flush - hibernate_should_abort returned TRUE\n");
    break;
   }
   if (hibernate_no_swapspace == TRUE) {
    HIBLOG("vm_compressor_flush - out of swap space\n");
    break;
   }
   if (vm_swap_files_pinned() == FALSE) {
    HIBLOG("vm_compressor_flush - unpinned swap files\n");
    break;
   }
   if (hibernate_in_progress_with_pinned_swap == TRUE &&
       (vm_swapfile_total_segs_alloced == vm_swapfile_total_segs_used)) {
    HIBLOG("vm_compressor_flush - out of pinned swap space\n");
    break;
   }
   clock_get_system_nanotime(&sec, &nsec);

   if (sec > hibernate_flushing_deadline) {
    HIBLOG("vm_compressor_flush - failed to finish before deadline\n");
    break;
   }
  }
  if (c_swapout_count >= C_SWAPOUT_LIMIT) {

   assert_wait_timeout((event_t) &compaction_swapper_running, THREAD_INTERRUPTIBLE, 100, 1000*NSEC_PER_USEC);

   lck_mtx_unlock_always(c_list_lock);

   thread_block(THREAD_CONTINUE_NULL);

   lck_mtx_lock_spin_always(c_list_lock);
  }



  vm_compressor_do_delayed_compactions(flush_all);

  vm_compressor_age_swapped_in_segments(flush_all);

  if (c_swapout_count >= C_SWAPOUT_LIMIT) {







   continue;
  }




  if (flush_all == FALSE) {
   boolean_t needs_to_swap;

   lck_mtx_unlock_always(c_list_lock);

   needs_to_swap = compressor_needs_to_swap();


   if (needs_to_swap == TRUE && vm_swap_low_on_space())
    vm_compressor_take_paging_space_action();


   lck_mtx_lock_spin_always(c_list_lock);

   if (needs_to_swap == FALSE)
    break;
  }
  if (queue_empty(&c_age_list_head))
   break;
  c_seg = (c_segment_t) queue_first(&c_age_list_head);

  assert(c_seg->c_state == C_ON_AGE_Q);

  if (flush_all == TRUE && c_seg->c_generation_id > c_generation_id_flush_barrier)
   break;

  lck_mtx_lock_spin_always(&c_seg->c_lock);

  if (c_seg->c_busy) {

   lck_mtx_unlock_always(c_list_lock);
   c_seg_wait_on_busy(c_seg);
   lck_mtx_lock_spin_always(c_list_lock);

   continue;
  }
  C_SEG_BUSY(c_seg);

  if (c_seg_do_minor_compaction_and_unlock(c_seg, FALSE, TRUE, TRUE)) {




   c_seg_major_compact_stats.count_of_freed_segs++;
   continue;
  }



  keep_compacting = TRUE;

  while (keep_compacting == TRUE) {

   assert(c_seg->c_busy);



   c_seg_next = (c_segment_t) queue_next(&c_seg->c_age_list);

   if (queue_end(&c_age_list_head, (queue_entry_t)c_seg_next))
    break;

   assert(c_seg_next->c_state == C_ON_AGE_Q);

   if (c_seg_major_compact_ok(c_seg, c_seg_next) == FALSE)
    break;

   lck_mtx_lock_spin_always(&c_seg_next->c_lock);

   if (c_seg_next->c_busy) {

    lck_mtx_unlock_always(c_list_lock);
    c_seg_wait_on_busy(c_seg_next);
    lck_mtx_lock_spin_always(c_list_lock);

    continue;
   }

   C_SEG_BUSY(c_seg_next);

   if (c_seg_do_minor_compaction_and_unlock(c_seg_next, FALSE, TRUE, TRUE)) {




    c_seg_major_compact_stats.count_of_freed_segs++;
    continue;
   }


   lck_mtx_unlock_always(c_list_lock);



   keep_compacting = c_seg_major_compact(c_seg, c_seg_next);

   PAGE_REPLACEMENT_DISALLOWED(TRUE);

   lck_mtx_lock_spin_always(&c_seg_next->c_lock);
   if (c_seg_minor_compaction_and_unlock(c_seg_next, TRUE))
    c_seg_major_compact_stats.count_of_freed_segs++;

   PAGE_REPLACEMENT_DISALLOWED(FALSE);


   lck_mtx_lock_spin_always(c_list_lock);

  }

  lck_mtx_lock_spin_always(&c_seg->c_lock);

  assert(c_seg->c_busy);
  assert(!c_seg->c_on_minorcompact_q);

  if (VM_CONFIG_SWAP_IS_ACTIVE) {




   c_seg_switch_state(c_seg, C_ON_SWAPOUT_Q, FALSE);
  } else {
   if ((vm_swapout_ripe_segments == TRUE && c_overage_swapped_count < c_overage_swapped_limit)) {

    assert(VM_CONFIG_SWAP_IS_PRESENT);





    if ((now - c_seg->c_creation_ts) >= vm_ripe_target_age) {
     c_seg->c_overage_swap = TRUE;
     c_overage_swapped_count++;
     c_seg_switch_state(c_seg, C_ON_SWAPOUT_Q, FALSE);
    }
   }
  }
  if (c_seg->c_state == C_ON_AGE_Q) {






   c_seg_switch_state(c_seg, C_ON_MAJORCOMPACT_Q, FALSE);
  } else {
   c_seg_major_compact_stats.wasted_space_in_swapouts += C_SEG_BUFSIZE - c_seg->c_bytes_used;
   c_seg_major_compact_stats.count_of_swapouts++;
  }
  C_SEG_WAKEUP_DONE(c_seg);

  lck_mtx_unlock_always(&c_seg->c_lock);

  if (c_swapout_count) {
   lck_mtx_unlock_always(c_list_lock);

   thread_wakeup((event_t)&c_swapout_list_head);

   lck_mtx_lock_spin_always(c_list_lock);
  }
 }
}
