
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_continue_t ;
typedef int event_t ;
struct TYPE_5__ {int options; } ;
struct TYPE_4__ {scalar_t__ vm_restricted_to_single_processor; } ;


 int FALSE ;
 int THREAD_UNINT ;
 int TH_OPT_VMPRIV ;
 scalar_t__ TRUE ;
 int assert_wait (int ,int ) ;
 int c_compressor_swap_trigger ;
 int c_list_lock ;
 int compaction_swap_trigger_thread_awakened ;
 scalar_t__ compaction_swapper_awakened ;
 scalar_t__ compaction_swapper_init_now ;
 int compaction_swapper_running ;
 TYPE_2__* current_thread () ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 int thread_block (int ) ;
 int thread_set_thread_name (TYPE_2__*,char*) ;
 int thread_vm_bind_group_add () ;
 int thread_wakeup (int ) ;
 int vm_compaction_swapper_do_init () ;
 int vm_compressor_compact_and_swap (int ) ;
 TYPE_1__ vm_pageout_state ;

__attribute__((used)) static void
vm_compressor_swap_trigger_thread(void)
{
 current_thread()->options |= TH_OPT_VMPRIV;
 if (compaction_swapper_init_now) {
  vm_compaction_swapper_do_init();

  if (vm_pageout_state.vm_restricted_to_single_processor == TRUE)
   thread_vm_bind_group_add();
  thread_set_thread_name(current_thread(), "VM_cswap_trigger");
  compaction_swapper_init_now = 0;
 }
 lck_mtx_lock_spin_always(c_list_lock);

 compaction_swap_trigger_thread_awakened++;
 compaction_swapper_awakened = 0;

 if (compaction_swapper_running == 0) {

  compaction_swapper_running = 1;

  vm_compressor_compact_and_swap(FALSE);

  compaction_swapper_running = 0;
 }
 assert_wait((event_t)&c_compressor_swap_trigger, THREAD_UNINT);

 if (compaction_swapper_running == 0)
  thread_wakeup((event_t)&compaction_swapper_running);

 lck_mtx_unlock_always(c_list_lock);

 thread_block((thread_continue_t)vm_compressor_swap_trigger_thread);


}
