
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_t ;


 int TRUE ;
 int c_compressor_swap_trigger ;
 int c_list_lock ;
 int compaction_swapper_awakened ;
 scalar_t__ compaction_swapper_running ;
 int fastwake_warmup ;
 scalar_t__ first_c_segment_to_warm_generation_id ;
 scalar_t__ last_c_segment_to_warm_generation_id ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int thread_wakeup (int ) ;

void
vm_compressor_do_warmup(void)
{
 lck_mtx_lock_spin_always(c_list_lock);

 if (first_c_segment_to_warm_generation_id == last_c_segment_to_warm_generation_id) {
  first_c_segment_to_warm_generation_id = last_c_segment_to_warm_generation_id = 0;

  lck_mtx_unlock_always(c_list_lock);
  return;
 }

 if (compaction_swapper_running == 0 && compaction_swapper_awakened == 0) {

  fastwake_warmup = TRUE;

  compaction_swapper_awakened = 1;
  thread_wakeup((event_t)&c_compressor_swap_trigger);
 }
 lck_mtx_unlock_always(c_list_lock);
}
