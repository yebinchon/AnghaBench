
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
struct uthread {int uu_flag; struct proc* uu_proc; } ;
struct proc {int p_lflag; void* p_vforkact; } ;


 int P_LINVFORK ;
 int UT_VFORK ;
 int current_task () ;
 scalar_t__ current_thread () ;
 scalar_t__ get_bsdtask_info (int ) ;
 scalar_t__ get_bsdthread_info (scalar_t__) ;
 struct proc* kernproc ;
 int panic (char*) ;

struct proc *
current_proc(void)
{

 struct uthread * ut;
 struct proc * p;
 thread_t thread = current_thread();

 ut = (struct uthread *)get_bsdthread_info(thread);
 if (ut && (ut->uu_flag & UT_VFORK) && ut->uu_proc) {
  p = ut->uu_proc;
  if ((p->p_lflag & P_LINVFORK) == 0)
   panic("returning child proc not under vfork");
  if (p->p_vforkact != (void *)thread)
   panic("returning child proc which is not cur_act");
  return (p);
 }

 p = (struct proc *)get_bsdtask_info(current_task());

 if (p == ((void*)0))
  return (kernproc);

 return (p);
}
