
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int dummy; } ;
struct proc {int p_wqptr; } ;


 struct workqueue* WQPTR_IS_INITING_VALUE ;
 struct workqueue* os_atomic_xchg (int *,struct workqueue*,int ) ;
 int proc_lock (struct proc*) ;
 int proc_unlock (struct proc*) ;
 int release ;
 int thread_wakeup (int *) ;

__attribute__((used)) static void
proc_set_wqptr(struct proc *p, struct workqueue *wq)
{
 wq = os_atomic_xchg(&p->p_wqptr, wq, release);
 if (wq == WQPTR_IS_INITING_VALUE) {
  proc_lock(p);
  thread_wakeup(&p->p_wqptr);
  proc_unlock(p);
 }
}
