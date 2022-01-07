
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 int MAC_PERFORM (int ,struct proc*) ;
 int proc_notify_exit ;

void
mac_proc_notify_exit(struct proc *proc)
{
 MAC_PERFORM(proc_notify_exit, proc);
}
