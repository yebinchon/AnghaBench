
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int thread_t ;
typedef TYPE_1__* proc_t ;
typedef int pid_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_3__ {int task; } ;


 int EINVAL ;
 int ENOATTR ;
 int ESRCH ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_INVALID_VALUE ;
 scalar_t__ KERN_SUCCESS ;
 int PROC_FLAG_APPLICATION ;
 int TASK_POLICY_DARWIN_BG ;
 TYPE_1__* current_proc () ;
 int current_thread () ;
 int proc_get_darwinbgstate (int ,int*) ;
 int proc_get_effective_thread_policy (int ,int ) ;
 int proc_pidbackgrounded (int ,int*) ;
 scalar_t__ thread_get_current_voucher_origin_pid (int *) ;

int
proc_get_originatorbgstate(uint32_t *is_backgrounded)
{
 uint32_t bgstate;
 proc_t p = current_proc();
 uint32_t flagsp = 0;
 kern_return_t kr;
 pid_t pid;
 int ret;
 thread_t thread = current_thread();

 bgstate = proc_get_effective_thread_policy(thread, TASK_POLICY_DARWIN_BG);


 if (bgstate) {
  *is_backgrounded = 1;
  return 0;
 }


 proc_get_darwinbgstate(p->task, &flagsp);
 if ((flagsp & PROC_FLAG_APPLICATION) == PROC_FLAG_APPLICATION) {
  *is_backgrounded = 0;
  return 0;
 }





 kr = thread_get_current_voucher_origin_pid(&pid);
 if (kr != KERN_SUCCESS) {
  if (kr == KERN_INVALID_TASK)
   return ESRCH;
  else if (kr == KERN_INVALID_VALUE)
   return ENOATTR;
  else
   return EINVAL;
 }

 ret = proc_pidbackgrounded(pid, is_backgrounded);
 return ret;
}
