
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* c_slot_t ;
typedef TYPE_2__* c_slot_mapping_t ;
typedef TYPE_3__* c_segment_t ;
struct TYPE_12__ {TYPE_3__* c_seg; } ;
struct TYPE_11__ {int c_lock; int c_busy_swapping; scalar_t__ c_busy; } ;
struct TYPE_10__ {int s_cseg; int s_cindx; } ;
struct TYPE_9__ {int c_packed_ptr; } ;


 TYPE_1__* C_SEG_SLOT_FROM_INDEX (TYPE_3__*,int) ;
 int C_SLOT_PACK_PTR (TYPE_2__*) ;
 int C_SV_CSEG_ID ;
 int FALSE ;
 int PAGE_REPLACEMENT_DISALLOWED (int ) ;
 int TRUE ;
 int c_seg_wait_on_busy (TYPE_3__*) ;
 TYPE_4__* c_segments ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;

void
vm_compressor_transfer(
 int *dst_slot_p,
 int *src_slot_p)
{
 c_slot_mapping_t dst_slot, src_slot;
 c_segment_t c_seg;
 int c_indx;
 c_slot_t cs;

 src_slot = (c_slot_mapping_t) src_slot_p;

 if (src_slot->s_cseg == C_SV_CSEG_ID) {
  *dst_slot_p = *src_slot_p;
  *src_slot_p = 0;
  return;
 }
 dst_slot = (c_slot_mapping_t) dst_slot_p;
Retry:
 PAGE_REPLACEMENT_DISALLOWED(TRUE);

 c_seg = c_segments[src_slot->s_cseg -1].c_seg;

 lck_mtx_lock_spin_always(&c_seg->c_lock);

 if (c_seg->c_busy && !c_seg->c_busy_swapping) {
  PAGE_REPLACEMENT_DISALLOWED(FALSE);
  c_seg_wait_on_busy(c_seg);
  goto Retry;
 }

 c_indx = src_slot->s_cindx;
 cs = C_SEG_SLOT_FROM_INDEX(c_seg, c_indx);

 cs->c_packed_ptr = C_SLOT_PACK_PTR(dst_slot);

 *dst_slot_p = *src_slot_p;
 *src_slot_p = 0;
 lck_mtx_unlock_always(&c_seg->c_lock);
 PAGE_REPLACEMENT_DISALLOWED(FALSE);
}
