
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_t ;


 int FALSE ;
 int c_compressor_swap_trigger ;
 int c_list_lock ;
 scalar_t__ c_minor_count ;
 scalar_t__ c_segment_count ;
 int compaction_swapper_awakened ;
 scalar_t__ compaction_swapper_running ;
 int fastwake_warmup ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int thread_wakeup (int ) ;
 scalar_t__ vm_compressor_needs_to_major_compact () ;
 int vm_wake_compactor_swapper_calls ;

void
vm_wake_compactor_swapper(void)
{
 if (compaction_swapper_running || compaction_swapper_awakened || c_segment_count == 0)
  return;

 if (c_minor_count || vm_compressor_needs_to_major_compact()) {

  lck_mtx_lock_spin_always(c_list_lock);

  fastwake_warmup = FALSE;

  if (compaction_swapper_running == 0 && compaction_swapper_awakened == 0) {

   vm_wake_compactor_swapper_calls++;

   compaction_swapper_awakened = 1;
   thread_wakeup((event_t)&c_compressor_swap_trigger);
  }
  lck_mtx_unlock_always(c_list_lock);
 }
}
