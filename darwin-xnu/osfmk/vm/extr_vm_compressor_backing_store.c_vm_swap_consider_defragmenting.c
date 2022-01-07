
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_t ;
typedef int boolean_t ;


 scalar_t__ FALSE ;
 void* TRUE ;
 int VM_SWAP_BUSY () ;
 int VM_SWAP_FLAGS_FORCE_DEFRAG ;
 int VM_SWAP_FLAGS_FORCE_RECLAIM ;
 scalar_t__ VM_SWAP_SHOULD_DEFRAGMENT () ;
 scalar_t__ VM_SWAP_SHOULD_RECLAIM () ;
 scalar_t__ compressor_store_stop_compaction ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int thread_wakeup (int ) ;
 int vm_swap_data_lock ;
 void* vm_swap_force_defrag ;
 void* vm_swap_force_reclaim ;
 int vm_swapfile_gc_needed ;
 int vm_swapfile_gc_thread_running ;

void
vm_swap_consider_defragmenting(int flags)
{
 boolean_t force_defrag = (flags & VM_SWAP_FLAGS_FORCE_DEFRAG);
 boolean_t force_reclaim = (flags & VM_SWAP_FLAGS_FORCE_RECLAIM);

 if (compressor_store_stop_compaction == FALSE && !VM_SWAP_BUSY() &&
     (force_defrag || force_reclaim || VM_SWAP_SHOULD_DEFRAGMENT() || VM_SWAP_SHOULD_RECLAIM())) {

  if (!vm_swapfile_gc_thread_running || force_defrag || force_reclaim) {
   lck_mtx_lock(&vm_swap_data_lock);

   if (force_defrag) {
    vm_swap_force_defrag = TRUE;
   }

   if (force_reclaim) {
    vm_swap_force_reclaim = TRUE;
   }

   if (!vm_swapfile_gc_thread_running)
    thread_wakeup((event_t) &vm_swapfile_gc_needed);

   lck_mtx_unlock(&vm_swap_data_lock);
  }
 }
}
