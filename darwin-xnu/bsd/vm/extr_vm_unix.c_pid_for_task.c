
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef scalar_t__ task_t ;
struct pid_for_task_args {int t; int pid; } ;
typedef scalar_t__ proc_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;


 int AUDIT_ARG (int,int) ;
 int AUDIT_MACH_SYSCALL_ENTER (int ) ;
 int AUDIT_MACH_SYSCALL_EXIT (int ) ;
 int AUE_PIDFORTASK ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ TASK_NULL ;
 int copyout (char*,int ,int) ;
 scalar_t__ get_bsdtask_info (scalar_t__) ;
 scalar_t__ is_corpsetask (scalar_t__) ;
 int mach_port1 ;
 scalar_t__ port_name_to_task_inspect (int) ;
 int proc_pid (scalar_t__) ;
 int task_deallocate (scalar_t__) ;
 int task_pid (scalar_t__) ;

kern_return_t
pid_for_task(
 struct pid_for_task_args *args)
{
 mach_port_name_t t = args->t;
 user_addr_t pid_addr = args->pid;
 proc_t p;
 task_t t1;
 int pid = -1;
 kern_return_t err = KERN_SUCCESS;

 AUDIT_MACH_SYSCALL_ENTER(AUE_PIDFORTASK);
 AUDIT_ARG(mach_port1, t);

 t1 = port_name_to_task_inspect(t);

 if (t1 == TASK_NULL) {
  err = KERN_FAILURE;
  goto pftout;
 } else {
  p = get_bsdtask_info(t1);
  if (p) {
   pid = proc_pid(p);
   err = KERN_SUCCESS;
  } else if (is_corpsetask(t1)) {
   pid = task_pid(t1);
   err = KERN_SUCCESS;
  }else {
   err = KERN_FAILURE;
  }
 }
 task_deallocate(t1);
pftout:
 AUDIT_ARG(pid, pid);
 (void) copyout((char *) &pid, pid_addr, sizeof(int));
 AUDIT_MACH_SYSCALL_EXIT(err);
 return(err);
}
