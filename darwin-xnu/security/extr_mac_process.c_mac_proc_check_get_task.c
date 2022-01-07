
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct proc {int dummy; } ;


 int MAC_CHECK (int ,struct ucred*,struct proc*) ;
 int proc_check_get_task ;

int
mac_proc_check_get_task(struct ucred *cred, struct proc *p)
{
 int error;

 MAC_CHECK(proc_check_get_task, cred, p);

 return (error);
}
