
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int dummy; } ;
struct proc {int dummy; } ;


 scalar_t__ _wq_exiting (struct workqueue*) ;
 struct workqueue* proc_get_wqptr (struct proc*) ;

bool
workq_is_exiting(struct proc *p)
{
 struct workqueue *wq = proc_get_wqptr(p);
 return !wq || _wq_exiting(wq);
}
