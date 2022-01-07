
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;


 int proc_get_wqptr_fast (struct proc*) ;
 int workq_unlock (int ) ;

void
workq_kern_threadreq_unlock(struct proc *p)
{
 workq_unlock(proc_get_wqptr_fast(p));
}
