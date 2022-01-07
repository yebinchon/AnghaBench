
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int user_addr_t ;
typedef scalar_t__ task_t ;
struct task_for_pid_args {int pid; int t; TYPE_1__* target_tport; } ;
typedef TYPE_1__* proc_t ;
typedef TYPE_1__* mach_port_name_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_11__ {scalar_t__ task; } ;


 int AUDIT_ARG (int,...) ;
 int AUDIT_MACH_SYSCALL_ENTER (int ) ;
 int AUDIT_MACH_SYSCALL_EXIT (int) ;
 int AUE_TASKFORPID ;
 scalar_t__ IPC_PORT_DEAD ;
 scalar_t__ IPC_PORT_NULL ;
 int KERN_ABORTED ;
 int KERN_FAILURE ;
 int KERN_PROTECTION_FAILURE ;
 int KERN_SUCCESS ;
 int MACH_MSG_SUCCESS ;
 void* MACH_PORT_NULL ;
 int MACH_RCV_INTERRUPTED ;
 TYPE_1__* PROC_NULL ;
 scalar_t__ TASK_NULL ;
 int __KERNEL_WAITING_ON_TASKGATED_CHECK_ACCESS_UPCALL__ (scalar_t__,int ,int ,int) ;
 scalar_t__ convert_task_to_port (scalar_t__) ;
 int copyout (char*,int ,int) ;
 TYPE_1__* current_proc () ;
 int current_task () ;
 int extmod_statistics_incr_task_for_pid (scalar_t__) ;
 int get_task_ipcspace (int ) ;
 TYPE_1__* ipc_port_copyout_send (void*,int ) ;
 int ipc_port_release_send (scalar_t__) ;
 scalar_t__ is_corpsetask (scalar_t__) ;
 int kauth_cred_get () ;
 int kauth_cred_issuser (int ) ;
 int kauth_getgid () ;
 int mac_proc_check_get_task (int ,TYPE_1__*) ;
 int mach_port1 ;
 int mach_port2 ;
 scalar_t__ port_name_to_task (TYPE_1__*) ;
 TYPE_1__* proc_find (int) ;
 int proc_rele (TYPE_1__*) ;
 int proc_selfpid () ;
 int process ;
 int task_deallocate (scalar_t__) ;
 int task_for_pid_posix_check (TYPE_1__*) ;
 scalar_t__ task_get_task_access_port (scalar_t__,scalar_t__*) ;
 int task_reference (scalar_t__) ;

kern_return_t
task_for_pid(
 struct task_for_pid_args *args)
{
 mach_port_name_t target_tport = args->target_tport;
 int pid = args->pid;
 user_addr_t task_addr = args->t;
 proc_t p = PROC_NULL;
 task_t t1 = TASK_NULL;
 task_t task = TASK_NULL;
 mach_port_name_t tret = MACH_PORT_NULL;
 ipc_port_t tfpport = MACH_PORT_NULL;
 void * sright;
 int error = 0;

 AUDIT_MACH_SYSCALL_ENTER(AUE_TASKFORPID);
 AUDIT_ARG(pid, pid);
 AUDIT_ARG(mach_port1, target_tport);


 if (pid == 0) {
  (void ) copyout((char *)&t1, task_addr, sizeof(mach_port_name_t));
  AUDIT_MACH_SYSCALL_EXIT(KERN_FAILURE);
  return(KERN_FAILURE);
 }

 t1 = port_name_to_task(target_tport);
 if (t1 == TASK_NULL) {
  (void) copyout((char *)&t1, task_addr, sizeof(mach_port_name_t));
  AUDIT_MACH_SYSCALL_EXIT(KERN_FAILURE);
  return(KERN_FAILURE);
 }


 p = proc_find(pid);
 if (p == PROC_NULL) {
  error = KERN_FAILURE;
  goto tfpout;
 }





 if (!(task_for_pid_posix_check(p))) {
  error = KERN_FAILURE;
  goto tfpout;
 }

 if (p->task == TASK_NULL) {
  error = KERN_SUCCESS;
  goto tfpout;
 }
 task = p->task;
 task_reference(task);


 if (!kauth_cred_issuser(kauth_cred_get()) &&
  p != current_proc() &&
  (task_get_task_access_port(task, &tfpport) == 0) &&
  (tfpport != IPC_PORT_NULL)) {

  if (tfpport == IPC_PORT_DEAD) {
   error = KERN_PROTECTION_FAILURE;
   goto tfpout;
  }






  proc_rele(p);
  p = PROC_NULL;


  error = __KERNEL_WAITING_ON_TASKGATED_CHECK_ACCESS_UPCALL__(tfpport, proc_selfpid(), kauth_getgid(), pid);

  if (error != MACH_MSG_SUCCESS) {
   if (error == MACH_RCV_INTERRUPTED)
    error = KERN_ABORTED;
   else
    error = KERN_FAILURE;
   goto tfpout;
  }
 }


 extmod_statistics_incr_task_for_pid(task);
 sright = (void *) convert_task_to_port(task);


 if (is_corpsetask(task)) {

  task = TASK_NULL;
  ipc_port_release_send(sright);
  error = KERN_FAILURE;
  goto tfpout;
 }


 task = TASK_NULL;
 tret = ipc_port_copyout_send(
   sright,
   get_task_ipcspace(current_task()));

 error = KERN_SUCCESS;

tfpout:
 task_deallocate(t1);
 AUDIT_ARG(mach_port2, tret);
 (void) copyout((char *) &tret, task_addr, sizeof(mach_port_name_t));

 if (tfpport != IPC_PORT_NULL) {
  ipc_port_release_send(tfpport);
 }
 if (task != TASK_NULL) {
  task_deallocate(task);
 }
 if (p != PROC_NULL)
  proc_rele(p);
 AUDIT_MACH_SYSCALL_EXIT(error);
 return(error);
}
