
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef int kern_return_t ;
typedef int event_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ freed_external; scalar_t__ freed_internal; scalar_t__ freed_cleaned; scalar_t__ freed_speculative; } ;


 int KERN_ABORTED ;
 int KERN_SUCCESS ;
 scalar_t__ THREAD_AWAKENED ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ THREAD_INTERRUPTED ;
 int THREAD_INTERRUPTIBLE ;
 scalar_t__ THREAD_WAITING ;
 unsigned int VM_PAGEOUT_STAT_BEFORE (unsigned int) ;
 scalar_t__ assert_wait (int ,int ) ;
 unsigned int mach_vm_ctl_page_free_wanted () ;
 scalar_t__ thread_block (int ) ;
 scalar_t__ vm_page_free_count ;
 scalar_t__ vm_page_free_target ;
 int vm_page_free_wanted ;
 unsigned int vm_pageout_stat_now ;
 TYPE_1__* vm_pageout_stats ;

kern_return_t
mach_vm_pressure_monitor(
 boolean_t wait_for_pressure,
 unsigned int nsecs_monitored,
 unsigned int *pages_reclaimed_p,
 unsigned int *pages_wanted_p)
{
 wait_result_t wr;
 unsigned int vm_pageout_then, vm_pageout_now;
 unsigned int pages_reclaimed;
 unsigned int units_of_monitor;

 units_of_monitor = 8 * nsecs_monitored;







 if (wait_for_pressure) {

  while (vm_page_free_count >= vm_page_free_target) {
   wr = assert_wait((event_t) &vm_page_free_wanted,
      THREAD_INTERRUPTIBLE);
   if (wr == THREAD_WAITING) {
    wr = thread_block(THREAD_CONTINUE_NULL);
   }
   if (wr == THREAD_INTERRUPTED) {
    return KERN_ABORTED;
   }
   if (wr == THREAD_AWAKENED) {






    break;
   }
  }
 }


 if (pages_wanted_p != ((void*)0)) {
  *pages_wanted_p = mach_vm_ctl_page_free_wanted();
 }

 if (pages_reclaimed_p == ((void*)0)) {
  return KERN_SUCCESS;
 }


 vm_pageout_now = vm_pageout_stat_now;
 pages_reclaimed = 0;
 for (vm_pageout_then =
       VM_PAGEOUT_STAT_BEFORE(vm_pageout_now);
      vm_pageout_then != vm_pageout_now &&
       units_of_monitor-- != 0;
      vm_pageout_then =
       VM_PAGEOUT_STAT_BEFORE(vm_pageout_then)) {
  pages_reclaimed += vm_pageout_stats[vm_pageout_then].freed_speculative;
  pages_reclaimed += vm_pageout_stats[vm_pageout_then].freed_cleaned;
  pages_reclaimed += vm_pageout_stats[vm_pageout_then].freed_internal;
  pages_reclaimed += vm_pageout_stats[vm_pageout_then].freed_external;
 }
 *pages_reclaimed_p = pages_reclaimed;

 return KERN_SUCCESS;
}
