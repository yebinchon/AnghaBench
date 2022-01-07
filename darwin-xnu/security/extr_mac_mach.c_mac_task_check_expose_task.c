
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct task {int dummy; } ;
struct proc {int dummy; } ;


 int ESRCH ;
 int MAC_CHECK (int ,struct ucred*,struct proc*) ;
 struct ucred* kauth_cred_get () ;
 struct proc* mac_task_get_proc (struct task*) ;
 int proc_check_expose_task ;
 int proc_rele (struct proc*) ;

int
mac_task_check_expose_task(struct task *task)
{
 int error;

 struct proc *p = mac_task_get_proc(task);
 if (p == ((void*)0))
  return ESRCH;

 struct ucred *cred = kauth_cred_get();
 MAC_CHECK(proc_check_expose_task, cred, p);
 proc_rele(p);
 return (error);
}
