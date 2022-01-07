
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swapfile {int swp_flags; int swp_queue; } ;
typedef int queue_entry_t ;
typedef int event_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int SWAP_READY ;
 int SWAP_RECLAIM ;
 scalar_t__ TRUE ;
 scalar_t__ VM_SWAP_SHOULD_RECLAIM () ;
 scalar_t__ VM_SWAP_SHOULD_TRIM (struct swapfile*) ;
 int assert (int) ;
 scalar_t__ delayed_trim_handling_in_progress ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 int swf_global_queue ;
 int thread_wakeup (int ) ;
 int vm_swap_data_lock ;
 int vm_swap_do_delayed_trim (struct swapfile*) ;
 int vm_swapfile_gc_needed ;
 int vm_swapfile_gc_thread_running ;

__attribute__((used)) static void
vm_swap_handle_delayed_trims(boolean_t force_now)
{
 struct swapfile *swf = ((void*)0);
 lck_mtx_lock(&vm_swap_data_lock);

 delayed_trim_handling_in_progress = TRUE;

 lck_mtx_unlock(&vm_swap_data_lock);
 swf = (struct swapfile*) queue_first(&swf_global_queue);

 while (queue_end(&swf_global_queue, (queue_entry_t)swf) == FALSE) {

  if ((swf->swp_flags & SWAP_READY) && (force_now == TRUE || VM_SWAP_SHOULD_TRIM(swf))) {

   assert(!(swf->swp_flags & SWAP_RECLAIM));
   vm_swap_do_delayed_trim(swf);
  }
  swf = (struct swapfile*) queue_next(&swf->swp_queue);
 }
 lck_mtx_lock(&vm_swap_data_lock);

 delayed_trim_handling_in_progress = FALSE;
 thread_wakeup((event_t) &delayed_trim_handling_in_progress);

 if (VM_SWAP_SHOULD_RECLAIM() && !vm_swapfile_gc_thread_running)
  thread_wakeup((event_t) &vm_swapfile_gc_needed);

 lck_mtx_unlock(&vm_swap_data_lock);

}
