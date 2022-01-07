
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {struct turnstile* wq_turnstile; } ;
struct turnstile {int dummy; } ;
struct proc {int dummy; } ;


 struct turnstile* TURNSTILE_NULL ;
 struct workqueue* proc_get_wqptr (struct proc*) ;

struct turnstile *
workq_turnstile(struct proc *p)
{
 struct workqueue *wq = proc_get_wqptr(p);
 return wq ? wq->wq_turnstile : TURNSTILE_NULL;
}
