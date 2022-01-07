
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {struct waitq* wqp_wq_ptr; } ;
struct wq_prepost {TYPE_2__ wqp_prepostid; TYPE_1__ wqp_wq; } ;
struct waitq {scalar_t__ waitq_prepost_id; } ;


 int WQP_WQ ;
 int assert (int) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;
 struct wq_prepost* wq_prepost_alloc (int ,int) ;
 int wq_prepost_put (struct wq_prepost*) ;
 int wqp_set_valid (struct wq_prepost*) ;

uint64_t waitq_get_prepost_id(struct waitq *waitq)
{
 struct wq_prepost *wqp;
 uint64_t wqp_id = 0;

 if (!waitq_valid(waitq))
  return 0;

 assert(!waitq_irq_safe(waitq));

 waitq_lock(waitq);

 if (!waitq_valid(waitq))
  goto out_unlock;

 if (waitq->waitq_prepost_id) {
  wqp_id = waitq->waitq_prepost_id;
  goto out_unlock;
 }


 waitq_unlock(waitq);

 wqp = wq_prepost_alloc(WQP_WQ, 1);
 if (!wqp)
  return 0;


 waitq_lock(waitq);

 if (!waitq_valid(waitq)) {
  wq_prepost_put(wqp);
  wqp_id = 0;
  goto out_unlock;
 }

 if (waitq->waitq_prepost_id) {

  wq_prepost_put(wqp);
  wqp_id = waitq->waitq_prepost_id;
  goto out_unlock;
 }

 wqp->wqp_wq.wqp_wq_ptr = waitq;

 wqp_set_valid(wqp);
 wqp_id = wqp->wqp_prepostid.id;
 waitq->waitq_prepost_id = wqp_id;

 wq_prepost_put(wqp);

out_unlock:
 waitq_unlock(waitq);

 return wqp_id;
}
