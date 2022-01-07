
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {struct waitq* wqp_wq_ptr; } ;
struct wq_prepost {TYPE_1__ wqp_wq; } ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;


 int assert (int) ;
 int disable_preemption () ;
 int enable_preemption () ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlink_locked (struct waitq*,struct waitq_set*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;
 struct wq_prepost* wq_prepost_get (int ) ;
 int wq_prepost_put (struct wq_prepost*) ;

void waitq_unlink_by_prepost_id(uint64_t wqp_id, struct waitq_set *wqset)
{
 struct wq_prepost *wqp;

 disable_preemption();
 wqp = wq_prepost_get(wqp_id);
 if (wqp) {
  struct waitq *wq;

  wq = wqp->wqp_wq.wqp_wq_ptr;
  assert(!waitq_irq_safe(wq));

  waitq_lock(wq);
  wq_prepost_put(wqp);

  if (!waitq_valid(wq)) {

   waitq_unlock(wq);
   enable_preemption();
   return;
  }


  waitq_unlink_locked(wq, wqset);

  waitq_unlock(wq);
 }
 enable_preemption();
 return;
}
