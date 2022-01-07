
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ kern_return_t ;
typedef int event_t ;
typedef int boolean_t ;
struct TYPE_2__ {int options; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FALSE ;
 scalar_t__ THREAD_AWAKENED ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ THREAD_WAITING ;
 int TH_OPT_VMPRIV ;
 int TRUE ;
 int VM_DEBUG_CONSTANT_EVENT (int ,int ,int ,int ,int ,int ,int ,...) ;
 int VM_PAGE_WAIT_BLOCK ;
 scalar_t__ assert_wait (int ,int) ;
 int c_vm_page_wait_block ;
 int counter (int ) ;
 int current_task () ;
 TYPE_1__* current_thread () ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ secluded_for_apps ;
 scalar_t__ task_can_use_secluded_mem (int ,int ) ;
 scalar_t__ thread_block (int ) ;
 int thread_wakeup (int ) ;
 scalar_t__ vm_page_free_count ;
 scalar_t__ vm_page_free_target ;
 int vm_page_free_wanted ;
 int vm_page_free_wanted_privileged ;
 int vm_page_free_wanted_secluded ;
 int vm_page_queue_free_lock ;
 scalar_t__ vm_page_secluded_count ;
 int vm_page_wait_block ;

boolean_t
vm_page_wait(
 int interruptible )
{







 kern_return_t wait_result;
 int need_wakeup = 0;
 int is_privileged = current_thread()->options & TH_OPT_VMPRIV;

 lck_mtx_lock_spin(&vm_page_queue_free_lock);

 if (is_privileged && vm_page_free_count) {
  lck_mtx_unlock(&vm_page_queue_free_lock);
  return TRUE;
 }

 if (vm_page_free_count >= vm_page_free_target) {
  lck_mtx_unlock(&vm_page_queue_free_lock);
  return TRUE;
 }

 if (is_privileged) {
  if (vm_page_free_wanted_privileged++ == 0)
   need_wakeup = 1;
  wait_result = assert_wait((event_t)&vm_page_free_wanted_privileged, interruptible);
 } else {
  if (vm_page_free_wanted++ == 0)
   need_wakeup = 1;
  wait_result = assert_wait((event_t)&vm_page_free_count,
       interruptible);
 }
 lck_mtx_unlock(&vm_page_queue_free_lock);
 counter(c_vm_page_wait_block++);

 if (need_wakeup)
  thread_wakeup((event_t)&vm_page_free_wanted);

 if (wait_result == THREAD_WAITING) {
  VM_DEBUG_CONSTANT_EVENT(vm_page_wait_block, VM_PAGE_WAIT_BLOCK, DBG_FUNC_START,
          vm_page_free_wanted_privileged,
          vm_page_free_wanted,



          0,

          0);
  wait_result = thread_block(THREAD_CONTINUE_NULL);
  VM_DEBUG_CONSTANT_EVENT(vm_page_wait_block,
       VM_PAGE_WAIT_BLOCK, DBG_FUNC_END, 0, 0, 0, 0);
 }

 return (wait_result == THREAD_AWAKENED);
}
