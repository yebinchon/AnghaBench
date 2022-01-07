
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wait_result_t ;
typedef int uint64_t ;
struct mach_wait_until_trap_args {int deadline; } ;
typedef int kern_return_t ;
typedef int event_t ;


 int KERN_ABORTED ;
 int KERN_SUCCESS ;
 int THREAD_ABORTSAFE ;
 scalar_t__ THREAD_INTERRUPTED ;
 scalar_t__ THREAD_WAITING ;
 int TIMEOUT_URGENCY_USER_NORMAL ;
 scalar_t__ assert_wait_deadline_with_leeway (int ,int ,int ,int ,int ) ;
 int mach_wait_until_continue ;
 scalar_t__ thread_block (int ) ;

kern_return_t
mach_wait_until_trap(
 struct mach_wait_until_trap_args *args)
{
 uint64_t deadline = args->deadline;
 wait_result_t wresult;

 wresult = assert_wait_deadline_with_leeway((event_t)mach_wait_until_trap, THREAD_ABORTSAFE,
         TIMEOUT_URGENCY_USER_NORMAL, deadline, 0);
 if (wresult == THREAD_WAITING)
  wresult = thread_block(mach_wait_until_continue);

 return ((wresult == THREAD_INTERRUPTED)? KERN_ABORTED: KERN_SUCCESS);
}
