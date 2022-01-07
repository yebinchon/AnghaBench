
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_continue_t ;
typedef int event_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int THREAD_UNINT ;
 scalar_t__ TRUE ;
 scalar_t__ VM_SWAP_BUSY () ;
 scalar_t__ VM_SWAP_SHOULD_DEFRAGMENT () ;
 scalar_t__ VM_SWAP_SHOULD_RECLAIM () ;
 int assert_wait (int ,int ) ;
 scalar_t__ compressor_store_stop_compaction ;
 scalar_t__ hibernate_in_progress_with_pinned_swap ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int thread_block (int ) ;
 int thread_wakeup (int ) ;
 int vm_swap_data_lock ;
 int vm_swap_defragment () ;
 scalar_t__ vm_swap_force_defrag ;
 scalar_t__ vm_swap_force_reclaim ;
 int vm_swap_reclaim () ;
 int vm_swapfile_gc_needed ;
 int vm_swapfile_gc_thread_awakened ;
 int vm_swapfile_gc_thread_running ;

__attribute__((used)) static void
vm_swapfile_gc_thread(void)

{
 boolean_t need_defragment;
 boolean_t need_reclaim;

 vm_swapfile_gc_thread_awakened++;
 vm_swapfile_gc_thread_running = 1;

 while (TRUE) {

  lck_mtx_lock(&vm_swap_data_lock);

  if (hibernate_in_progress_with_pinned_swap == TRUE)
   break;

  if (VM_SWAP_BUSY() || compressor_store_stop_compaction == TRUE)
   break;

  need_defragment = FALSE;
  need_reclaim = FALSE;

  if (VM_SWAP_SHOULD_DEFRAGMENT())
   need_defragment = TRUE;

  if (VM_SWAP_SHOULD_RECLAIM()) {
   need_defragment = TRUE;
   need_reclaim = TRUE;
  }
  if (need_defragment == FALSE && need_reclaim == FALSE)
   break;

  vm_swap_force_defrag = FALSE;
  vm_swap_force_reclaim = FALSE;

  lck_mtx_unlock(&vm_swap_data_lock);

  if (need_defragment == TRUE)
   vm_swap_defragment();
  if (need_reclaim == TRUE)
   vm_swap_reclaim();
 }
 vm_swapfile_gc_thread_running = 0;

 if (hibernate_in_progress_with_pinned_swap == TRUE)
  thread_wakeup((event_t)&hibernate_in_progress_with_pinned_swap);

 assert_wait((event_t)&vm_swapfile_gc_needed, THREAD_UNINT);

 lck_mtx_unlock(&vm_swap_data_lock);

 thread_block((thread_continue_t)vm_swapfile_gc_thread);


}
