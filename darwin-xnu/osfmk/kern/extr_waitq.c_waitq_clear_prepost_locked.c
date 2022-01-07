
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ id; } ;
struct wq_prepost {TYPE_1__ wqp_prepostid; } ;
struct waitq {scalar_t__ waitq_prepost_id; } ;


 int assert (int) ;
 int delay (int) ;
 int disable_preemption () ;
 int enable_preemption () ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 struct wq_prepost* wq_prepost_get (scalar_t__) ;
 int wq_prepost_invalidate (struct wq_prepost*) ;
 int wq_prepost_put (struct wq_prepost*) ;
 int wqdbg_v (char*,scalar_t__,scalar_t__) ;
 scalar_t__ wqp_refcnt (struct wq_prepost*) ;

int waitq_clear_prepost_locked(struct waitq *waitq)
{
 struct wq_prepost *wqp;
 int dropped_lock = 0;

 assert(!waitq_irq_safe(waitq));

 if (waitq->waitq_prepost_id == 0)
  return 0;

 wqp = wq_prepost_get(waitq->waitq_prepost_id);
 waitq->waitq_prepost_id = 0;
 if (wqp) {
  uint64_t wqp_id = wqp->wqp_prepostid.id;
  wqdbg_v("invalidate prepost 0x%llx (refcnt:%d)",
   wqp->wqp_prepostid.id, wqp_refcnt(wqp));
  wq_prepost_invalidate(wqp);
  while (wqp_refcnt(wqp) > 1) {
   disable_preemption();

   waitq_unlock(waitq);
   dropped_lock = 1;




   delay(1);

   waitq_lock(waitq);

   enable_preemption();
  }
  if (wqp_refcnt(wqp) > 0 && wqp->wqp_prepostid.id == wqp_id)
   wq_prepost_put(wqp);
 }

 return dropped_lock;
}
