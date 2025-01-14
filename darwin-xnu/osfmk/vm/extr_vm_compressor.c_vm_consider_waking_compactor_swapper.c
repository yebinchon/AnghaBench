
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int event_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {int resident_page_count; } ;


 scalar_t__ COMPRESSOR_NEEDS_TO_MINOR_COMPACT () ;
 int DBG_FUNC_NONE ;
 void* FALSE ;
 int PAGE_SIZE_64 ;
 scalar_t__ TRUE ;
 int VM_WAKEUP_COMPACTOR_SWAPPER ;
 int c_compressor_swap_trigger ;
 int c_list_lock ;
 scalar_t__ c_minor_count ;
 scalar_t__ c_segment_count ;
 int compaction_swapper_awakened ;
 int compaction_swapper_init_now ;
 int compaction_swapper_inited ;
 scalar_t__ compaction_swapper_running ;
 int compressor_bytes_used ;
 scalar_t__ compressor_needs_to_swap () ;
 TYPE_1__* compressor_object ;
 void* fastwake_warmup ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int memoryshot (int ,int ) ;
 int thread_wakeup (int ) ;

void
vm_consider_waking_compactor_swapper(void)
{
 boolean_t need_wakeup = FALSE;

 if (c_segment_count == 0)
  return;

 if (compaction_swapper_running || compaction_swapper_awakened)
  return;

 if (!compaction_swapper_inited && !compaction_swapper_init_now) {
  compaction_swapper_init_now = 1;
  need_wakeup = TRUE;
 }

 if (c_minor_count && (COMPRESSOR_NEEDS_TO_MINOR_COMPACT())) {

  need_wakeup = TRUE;

 } else if (compressor_needs_to_swap()) {

  need_wakeup = TRUE;

 } else if (c_minor_count) {
  uint64_t total_bytes;

  total_bytes = compressor_object->resident_page_count * PAGE_SIZE_64;

  if ((total_bytes - compressor_bytes_used) > total_bytes / 10)
   need_wakeup = TRUE;
 }
 if (need_wakeup == TRUE) {

  lck_mtx_lock_spin_always(c_list_lock);

  fastwake_warmup = FALSE;

  if (compaction_swapper_running == 0 && compaction_swapper_awakened == 0) {
   memoryshot(VM_WAKEUP_COMPACTOR_SWAPPER, DBG_FUNC_NONE);

   compaction_swapper_awakened = 1;
   thread_wakeup((event_t)&c_compressor_swap_trigger);
  }
  lck_mtx_unlock_always(c_list_lock);
 }
}
