
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct proc {int dummy; } ;


 int FALSE ;
 int MAC_PERFORM (int ,struct proc*) ;
 int TRUE ;
 int current_thread () ;
 int proc_notify_exec_complete ;
 int thread_enable_send_importance (int ,int ) ;

void
mac_proc_notify_exec_complete(struct proc *proc)
{
 thread_t thread = current_thread();






 thread_enable_send_importance(thread, TRUE);
 MAC_PERFORM(proc_notify_exec_complete, proc);
 thread_enable_send_importance(thread, FALSE);
}
