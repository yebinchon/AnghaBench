
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int dummy; } ;
struct proc {int dummy; } ;


 struct workqueue* WQPTR_IS_INITING_VALUE ;
 struct workqueue* proc_get_wqptr_fast (struct proc*) ;

__attribute__((used)) static struct workqueue *
proc_get_wqptr(struct proc *p)
{
 struct workqueue *wq = proc_get_wqptr_fast(p);
 return wq == WQPTR_IS_INITING_VALUE ? ((void*)0) : wq;
}
