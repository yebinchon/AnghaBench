
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int c_lock; } ;


 int C_ON_SWAPPEDOUTSPARSE_Q ;
 int C_SEG_BUSY (TYPE_1__*) ;
 int C_SEG_WAKEUP_DONE (TYPE_1__*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int * c_list_lock ;
 int c_seg_moved_to_sparse_list ;
 int c_seg_switch_state (TYPE_1__*,int ,scalar_t__) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_try_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;

void
c_seg_move_to_sparse_list(c_segment_t c_seg)
{
 boolean_t clear_busy = FALSE;

 if ( !lck_mtx_try_lock_spin_always(c_list_lock)) {
  C_SEG_BUSY(c_seg);

  lck_mtx_unlock_always(&c_seg->c_lock);
  lck_mtx_lock_spin_always(c_list_lock);
  lck_mtx_lock_spin_always(&c_seg->c_lock);

  clear_busy = TRUE;
 }
 c_seg_switch_state(c_seg, C_ON_SWAPPEDOUTSPARSE_Q, FALSE);

 c_seg_moved_to_sparse_list++;

 lck_mtx_unlock_always(c_list_lock);

 if (clear_busy == TRUE)
  C_SEG_WAKEUP_DONE(c_seg);
}
