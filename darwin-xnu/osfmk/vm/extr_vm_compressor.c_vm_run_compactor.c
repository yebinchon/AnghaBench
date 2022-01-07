
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int event_t ;
struct TYPE_2__ {scalar_t__ vm_restricted_to_single_processor; } ;


 scalar_t__ FALSE ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int assert_wait (int ,int ) ;
 int c_list_lock ;
 scalar_t__ c_minor_count ;
 scalar_t__ c_segment_count ;
 int compaction_swapper_running ;
 scalar_t__ fastwake_warmup ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int thread_block (int ) ;
 int thread_wakeup (int ) ;
 int vm_compressor_do_delayed_compactions (scalar_t__) ;
 TYPE_1__ vm_pageout_state ;
 int vm_run_compactor_already_running ;
 int vm_run_compactor_did_compact ;
 int vm_run_compactor_empty_minor_q ;
 int vm_run_compactor_waited ;

void
vm_run_compactor(void)
{
 if (c_segment_count == 0)
  return;

 lck_mtx_lock_spin_always(c_list_lock);

 if (c_minor_count == 0) {
  vm_run_compactor_empty_minor_q++;

  lck_mtx_unlock_always(c_list_lock);
  return;
 }
 if (compaction_swapper_running) {

  if (vm_pageout_state.vm_restricted_to_single_processor == FALSE) {
   vm_run_compactor_already_running++;

   lck_mtx_unlock_always(c_list_lock);
   return;
  }
  vm_run_compactor_waited++;

  assert_wait((event_t)&compaction_swapper_running, THREAD_UNINT);

  lck_mtx_unlock_always(c_list_lock);

  thread_block(THREAD_CONTINUE_NULL);

  return;
 }
 vm_run_compactor_did_compact++;

 fastwake_warmup = FALSE;
 compaction_swapper_running = 1;

 vm_compressor_do_delayed_compactions(FALSE);

 compaction_swapper_running = 0;

 lck_mtx_unlock_always(c_list_lock);

 thread_wakeup((event_t)&compaction_swapper_running);
}
