
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {scalar_t__ uu_ucred; } ;
struct proc {int dummy; } ;
typedef struct proc* proc_t ;
typedef scalar_t__ kauth_cred_t ;


 scalar_t__ NOCRED ;
 int current_thread () ;
 scalar_t__ get_bsdtask_info (int ) ;
 struct uthread* get_bsdthread_info (int ) ;
 int get_threadtask (int ) ;
 scalar_t__ kauth_cred_proc_ref (struct proc*) ;
 int panic (char*) ;

kauth_cred_t
kauth_cred_get(void)
{
 struct proc *p;
 struct uthread *uthread;

 uthread = get_bsdthread_info(current_thread());

 if (uthread == ((void*)0))
  panic("thread wants credential but has no BSD thread info");







 if (uthread->uu_ucred == NOCRED) {
  if ((p = (proc_t) get_bsdtask_info(get_threadtask(current_thread()))) == ((void*)0))
   panic("thread wants credential but has no BSD process");
  uthread->uu_ucred = kauth_cred_proc_ref(p);
 }
 return(uthread->uu_ucred);
}
