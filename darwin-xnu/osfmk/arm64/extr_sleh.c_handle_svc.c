
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct uthread {int dummy; } ;
struct proc {int dummy; } ;
typedef int arm_saved_state_t ;
struct TYPE_5__ {scalar_t__ uthread; int syscalls_unix; int syscalls_mach; int iotier_override; } ;


 scalar_t__ PLATFORM_SYSCALL_TRAP_NO ;
 int THROTTLE_LEVEL_NONE ;
 int assert (struct proc*) ;
 TYPE_1__* current_thread () ;
 struct proc* get_bsdthreadtask_info (TYPE_1__*) ;
 int get_saved_state_svc_number (int *) ;
 int handle_mach_absolute_time_trap (int *) ;
 int handle_mach_continuous_time_trap (int *) ;
 int mach_kauth_cred_uthread_update () ;
 int mach_syscall (int *) ;
 int panic (char*) ;
 int platform_syscall (int *) ;
 int syscall_trace (int *) ;
 int unix_syscall (int *,TYPE_1__*,struct uthread*,struct proc*) ;

__attribute__((used)) static void
handle_svc(arm_saved_state_t *state)
{
 int trap_no = get_saved_state_svc_number(state);
 thread_t thread = current_thread();
 struct proc *p;





 syscall_trace(state);


 thread->iotier_override = THROTTLE_LEVEL_NONE;

 if (trap_no == (int)PLATFORM_SYSCALL_TRAP_NO) {
  platform_syscall(state);
  panic("Returned from platform_syscall()?");
 }

 mach_kauth_cred_uthread_update();

 if (trap_no < 0) {
  if (trap_no == -3) {
   handle_mach_absolute_time_trap(state);
   return;
  } else if (trap_no == -4) {
   handle_mach_continuous_time_trap(state);
   return;
  }


  thread->syscalls_mach++;
  mach_syscall(state);
 } else {

  thread->syscalls_unix++;
  p = get_bsdthreadtask_info(thread);

  assert(p);

  unix_syscall(state, thread, (struct uthread*)thread->uthread, p);
 }
}
