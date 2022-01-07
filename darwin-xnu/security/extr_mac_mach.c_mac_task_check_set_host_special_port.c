
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct proc {int dummy; } ;
struct ipc_port {int dummy; } ;
typedef int kauth_cred_t ;


 int ESRCH ;
 int MAC_CHECK (int ,int ,int,struct ipc_port*) ;
 int kauth_cred_proc_ref (struct proc*) ;
 int kauth_cred_unref (int *) ;
 struct proc* mac_task_get_proc (struct task*) ;
 int proc_check_set_host_special_port ;
 int proc_rele (struct proc*) ;

int
mac_task_check_set_host_special_port(struct task *task, int id, struct ipc_port *port)
{
 int error;

 struct proc *p = mac_task_get_proc(task);
 if (p == ((void*)0))
  return ESRCH;

 kauth_cred_t cred = kauth_cred_proc_ref(p);
 MAC_CHECK(proc_check_set_host_special_port, cred, id, port);
 kauth_cred_unref(&cred);
 proc_rele(p);
 return (error);
}
