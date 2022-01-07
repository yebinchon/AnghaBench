
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;
typedef TYPE_1__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {scalar_t__ c_swappedin_ts; int c_lock; } ;


 int C_ON_AGE_Q ;
 scalar_t__ C_SEGMENT_SWAPPEDIN_AGE_LIMIT ;
 scalar_t__ FALSE ;
 int c_seg_switch_state (TYPE_1__*,int ,scalar_t__) ;
 int c_swappedin_list_head ;
 int clock_get_system_nanotime (scalar_t__*,int *) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 int queue_empty (int *) ;
 scalar_t__ queue_first (int *) ;

__attribute__((used)) static void
vm_compressor_age_swapped_in_segments(boolean_t flush_all)
{
 c_segment_t c_seg;
 clock_sec_t now;
 clock_nsec_t nsec;

 clock_get_system_nanotime(&now, &nsec);

 while (!queue_empty(&c_swappedin_list_head)) {

  c_seg = (c_segment_t)queue_first(&c_swappedin_list_head);

  if (flush_all == FALSE && (now - c_seg->c_swappedin_ts) < C_SEGMENT_SWAPPEDIN_AGE_LIMIT)
   break;

  lck_mtx_lock_spin_always(&c_seg->c_lock);

  c_seg_switch_state(c_seg, C_ON_AGE_Q, FALSE);

  lck_mtx_unlock_always(&c_seg->c_lock);
 }
}
