
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef size_t uint32_t ;
typedef int event_t ;
typedef scalar_t__ clock_sec_t ;
typedef int clock_nsec_t ;
typedef TYPE_2__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int * c_buffer; } ;
struct TYPE_12__ {size_t c_populated_offset; size_t c_nextoffset; size_t c_creation_ts; int c_state; scalar_t__ c_generation_id; int c_lock; int c_busy; TYPE_1__ c_store; } ;


 int C_ON_AGE_Q ;
 int C_ON_SWAPOUT_Q ;
 int C_SEG_BUFSIZE ;
 int C_SEG_BUSY (TYPE_2__*) ;
 size_t C_SEG_BYTES_TO_OFFSET (int ) ;
 int C_SEG_OFFSET_TO_BYTES (size_t) ;
 scalar_t__ C_SEG_UNUSED_BYTES (TYPE_2__*) ;
 int C_SEG_WAKEUP_DONE (TYPE_2__*) ;
 int C_SEG_WRITE_PROTECT (TYPE_2__*) ;
 scalar_t__ FALSE ;
 int KMA_COMPRESSOR ;
 scalar_t__ PAGE_SIZE ;
 int PAGE_SIZE_64 ;
 scalar_t__ TRUE ;
 scalar_t__ VM_CONFIG_FREEZER_SWAP_IS_ACTIVE ;
 scalar_t__ VM_CONFIG_SWAP_IS_PRESENT ;
 int assert (int) ;
 int c_freezer_swapout_page_count ;
 int c_generation_id ;
 int * c_list_lock ;
 int c_seg_need_delayed_compaction (TYPE_2__*,scalar_t__) ;
 int c_seg_switch_state (TYPE_2__*,int,scalar_t__) ;
 int c_swapout_list_head ;
 int clock_get_system_nanotime (scalar_t__*,int *) ;
 int compressor_map ;
 int freezer_chead ;
 int kernel_memory_depopulate (int ,int ,size_t,int ) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 int round_page_32 (int) ;
 int thread_wakeup (int ) ;
 size_t trunc_page_32 (int) ;
 scalar_t__ vm_darkwake_mode ;

__attribute__((used)) static void
c_current_seg_filled(c_segment_t c_seg, c_segment_t *current_chead)
{
 uint32_t unused_bytes;
 uint32_t offset_to_depopulate;
 int new_state = C_ON_AGE_Q;
 clock_sec_t sec;
 clock_nsec_t nsec;
 boolean_t head_insert = FALSE;

 unused_bytes = trunc_page_32(C_SEG_OFFSET_TO_BYTES(c_seg->c_populated_offset - c_seg->c_nextoffset));
 if (unused_bytes) {
  offset_to_depopulate = C_SEG_BYTES_TO_OFFSET(round_page_32(C_SEG_OFFSET_TO_BYTES(c_seg->c_nextoffset)));




  lck_mtx_unlock_always(&c_seg->c_lock);

  kernel_memory_depopulate(
   compressor_map,
   (vm_offset_t) &c_seg->c_store.c_buffer[offset_to_depopulate],
   unused_bytes,
   KMA_COMPRESSOR);

  lck_mtx_lock_spin_always(&c_seg->c_lock);

  c_seg->c_populated_offset = offset_to_depopulate;
 }
 assert(C_SEG_OFFSET_TO_BYTES(c_seg->c_populated_offset) <= C_SEG_BUFSIZE);
 if (vm_darkwake_mode == TRUE) {
  new_state = C_ON_SWAPOUT_Q;
  head_insert = TRUE;
 }

 clock_get_system_nanotime(&sec, &nsec);
 c_seg->c_creation_ts = (uint32_t)sec;

 lck_mtx_lock_spin_always(c_list_lock);

 c_seg->c_generation_id = c_generation_id++;
 c_seg_switch_state(c_seg, new_state, head_insert);
 if (c_seg->c_state == C_ON_AGE_Q && C_SEG_UNUSED_BYTES(c_seg) >= PAGE_SIZE)
  c_seg_need_delayed_compaction(c_seg, TRUE);

 lck_mtx_unlock_always(c_list_lock);

 if (c_seg->c_state == C_ON_SWAPOUT_Q)
  thread_wakeup((event_t)&c_swapout_list_head);

 *current_chead = ((void*)0);
}
