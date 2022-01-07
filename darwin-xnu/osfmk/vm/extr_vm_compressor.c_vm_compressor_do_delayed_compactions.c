
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ c_busy; int c_lock; } ;


 int C_SEG_BUSY (TYPE_1__*) ;
 scalar_t__ C_SWAPOUT_LIMIT ;
 int DELAYED_COMPACTIONS_PER_PASS ;
 scalar_t__ FALSE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ TRUE ;
 scalar_t__ VM_CONFIG_SWAP_IS_ACTIVE ;
 int * c_list_lock ;
 int c_minor_list_head ;
 int c_seg_do_minor_compaction_and_unlock (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ;
 int c_seg_wait_on_busy (TYPE_1__*) ;
 scalar_t__ c_swapout_count ;
 scalar_t__ compressor_needs_to_swap () ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 int queue_empty (int *) ;
 scalar_t__ queue_first (int *) ;

void
vm_compressor_do_delayed_compactions(boolean_t flush_all)
{
 c_segment_t c_seg;
 int number_compacted = 0;
 boolean_t needs_to_swap = FALSE;



 LCK_MTX_ASSERT(c_list_lock, LCK_MTX_ASSERT_OWNED);


 while (!queue_empty(&c_minor_list_head) && needs_to_swap == FALSE) {

  c_seg = (c_segment_t)queue_first(&c_minor_list_head);

  lck_mtx_lock_spin_always(&c_seg->c_lock);

  if (c_seg->c_busy) {

   lck_mtx_unlock_always(c_list_lock);
   c_seg_wait_on_busy(c_seg);
   lck_mtx_lock_spin_always(c_list_lock);

   continue;
  }
  C_SEG_BUSY(c_seg);

  c_seg_do_minor_compaction_and_unlock(c_seg, TRUE, FALSE, TRUE);

  if (VM_CONFIG_SWAP_IS_ACTIVE && (number_compacted++ > DELAYED_COMPACTIONS_PER_PASS)) {

   if ((flush_all == TRUE || compressor_needs_to_swap() == TRUE) && c_swapout_count < C_SWAPOUT_LIMIT)
    needs_to_swap = TRUE;

   number_compacted = 0;
  }
  lck_mtx_lock_spin_always(c_list_lock);
 }
}
