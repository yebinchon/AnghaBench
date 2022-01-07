
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct uthread {scalar_t__ uu_sigmask; } ;


 int COALITION_NULL ;
 int FALSE ;
 scalar_t__ PROC_NULL ;
 int TASK_NULL ;
 int TRUE ;
 int act_set_astbsd (int ) ;
 int cloneproc (int ,int ,int ,int ,int ) ;
 scalar_t__ get_bsdthread_info (int ) ;
 int get_threadtask (int ) ;
 scalar_t__ initproc ;
 int kernproc ;
 int panic (char*) ;
 scalar_t__ proc_find (int) ;
 int proc_signalend (scalar_t__,int ) ;
 int proc_transend (scalar_t__,int ) ;
 int task_clear_return_wait (int ) ;

void
bsd_utaskbootstrap(void)
{
 thread_t thread;
 struct uthread *ut;





 thread = cloneproc(TASK_NULL, COALITION_NULL, kernproc, FALSE, TRUE);


 initproc = proc_find(1);
 proc_signalend(initproc, 0);
 proc_transend(initproc, 0);

 ut = (struct uthread *)get_bsdthread_info(thread);
 ut->uu_sigmask = 0;
 act_set_astbsd(thread);
 task_clear_return_wait(get_threadtask(thread));
}
