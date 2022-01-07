
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 int proc_get_wqptr_fast (struct proc*) ;
 int workq_lock_spin (int ) ;

void
workq_kern_threadreq_lock(struct proc *p)
{
 workq_lock_spin(proc_get_wqptr_fast(p));
}
