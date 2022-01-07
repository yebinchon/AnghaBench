
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vm_pageout_queue {scalar_t__ pgo_inited; scalar_t__ pgo_lowpriority; int pgo_tid; } ;
typedef scalar_t__ boolean_t ;


 int DTRACE_VM (int ) ;
 scalar_t__ FALSE ;
 int TASK_POLICY_EXTERNAL ;
 int TASK_POLICY_IO ;
 int THROTTLE_LEVEL_PAGEOUT_THROTTLED ;
 int THROTTLE_LEVEL_PAGEOUT_UNTHROTTLED ;
 scalar_t__ TRUE ;
 scalar_t__ hibernate_cleaning_in_progress ;
 int kernel_task ;
 int laundrythrottle ;
 int laundryunthrottle ;
 int proc_set_thread_policy_with_tid (int ,int ,int ,int ,int ) ;
 int vm_page_lock_queues () ;
 int vm_page_unlock_queues () ;

__attribute__((used)) static void
vm_pageout_adjust_eq_iothrottle(struct vm_pageout_queue *eq, boolean_t req_lowpriority)
{
 uint32_t policy;

 if (hibernate_cleaning_in_progress == TRUE)
  req_lowpriority = FALSE;

 if (eq->pgo_inited == TRUE && eq->pgo_lowpriority != req_lowpriority) {

  vm_page_unlock_queues();

  if (req_lowpriority == TRUE) {
   policy = THROTTLE_LEVEL_PAGEOUT_THROTTLED;
   DTRACE_VM(laundrythrottle);
  } else {
   policy = THROTTLE_LEVEL_PAGEOUT_UNTHROTTLED;
   DTRACE_VM(laundryunthrottle);
  }
  proc_set_thread_policy_with_tid(kernel_task, eq->pgo_tid,
      TASK_POLICY_EXTERNAL, TASK_POLICY_IO, policy);

  eq->pgo_lowpriority = req_lowpriority;

  vm_page_lock_queues();
 }
}
