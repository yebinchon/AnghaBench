
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef scalar_t__ uint64_t ;
struct c_slot {int dummy; } ;
typedef int int32_t ;
typedef TYPE_2__* c_segment_t ;
struct TYPE_11__ {int c_segno; } ;
struct TYPE_9__ {scalar_t__ c_swap_handle; int * c_buffer; } ;
struct TYPE_10__ {int c_busy; scalar_t__ c_slots_used; scalar_t__ c_overage_swap; int c_mysegno; int c_slot_var_array_len; int c_slot_var_array; int c_lock; TYPE_1__ c_store; int c_populated_offset; int c_busy_swapping; int c_on_minorcompact_q; } ;


 int C_IS_FREE ;
 int C_SEG_IS_ONDISK (TYPE_2__*) ;
 int C_SEG_OFFSET_TO_BYTES (int ) ;
 int C_SEG_WAKEUP_DONE (TYPE_2__*) ;
 scalar_t__ FALSE ;
 int KMA_COMPRESSOR ;
 int PAGE_SIZE ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int c_free_segno_head ;
 int * c_list_lock ;
 int c_overage_swapped_count ;
 int c_seg_switch_state (TYPE_2__*,int ,scalar_t__) ;
 int c_segment_count ;
 TYPE_4__* c_segments ;
 int compressor_map ;
 int compressor_segment_zone ;
 int kernel_memory_depopulate (int ,int ,int,int ) ;
 int kfree (int ,int) ;
 int lck_mtx_destroy (int *,int *) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 int round_page_32 (int ) ;
 int vm_compressor_lck_grp ;
 int vm_swap_free (scalar_t__) ;
 int zfree (int ,TYPE_2__*) ;

void
c_seg_free_locked(c_segment_t c_seg)
{
 int segno;
 int pages_populated = 0;
 int32_t *c_buffer = ((void*)0);
 uint64_t c_swap_handle = 0;

 assert(c_seg->c_busy);
 assert(c_seg->c_slots_used == 0);
 assert(!c_seg->c_on_minorcompact_q);
 assert(!c_seg->c_busy_swapping);

 if (c_seg->c_overage_swap == TRUE) {
  c_overage_swapped_count--;
  c_seg->c_overage_swap = FALSE;
 }
 if ( !(C_SEG_IS_ONDISK(c_seg)))
  c_buffer = c_seg->c_store.c_buffer;
 else
  c_swap_handle = c_seg->c_store.c_swap_handle;

 c_seg_switch_state(c_seg, C_IS_FREE, FALSE);

 lck_mtx_unlock_always(c_list_lock);

 if (c_buffer) {
  pages_populated = (round_page_32(C_SEG_OFFSET_TO_BYTES(c_seg->c_populated_offset))) / PAGE_SIZE;
  c_seg->c_store.c_buffer = ((void*)0);
 } else
  c_seg->c_store.c_swap_handle = (uint64_t)-1;

 lck_mtx_unlock_always(&c_seg->c_lock);

 if (c_buffer) {
  if (pages_populated)
   kernel_memory_depopulate(compressor_map, (vm_offset_t) c_buffer, pages_populated * PAGE_SIZE, KMA_COMPRESSOR);

 } else if (c_swap_handle) {



  vm_swap_free(c_swap_handle);
 }
 lck_mtx_lock_spin_always(&c_seg->c_lock);




 C_SEG_WAKEUP_DONE(c_seg);
 lck_mtx_unlock_always(&c_seg->c_lock);

 segno = c_seg->c_mysegno;

 lck_mtx_lock_spin_always(c_list_lock);







 c_segments[segno].c_segno = c_free_segno_head;
 c_free_segno_head = segno;
 c_segment_count--;

 lck_mtx_unlock_always(c_list_lock);

 lck_mtx_destroy(&c_seg->c_lock, &vm_compressor_lck_grp);

 if (c_seg->c_slot_var_array_len)
  kfree(c_seg->c_slot_var_array, sizeof(struct c_slot) * c_seg->c_slot_var_array_len);

 zfree(compressor_segment_zone, c_seg);
}
