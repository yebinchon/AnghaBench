
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct wq_unlink_ctx {struct waitq_set* unlink_wqset; struct waitq* unlink_wq; } ;
struct waitq {scalar_t__ waitq_set_id; scalar_t__ waitq_prepost_id; int waitq_prepost; } ;
struct waitq_set {scalar_t__ wqset_id; int wqset_prepost_id; struct waitq wqset_q; } ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_NOT_IN_SET ;
 scalar_t__ KERN_SUCCESS ;
 int LINK_WALK_ONE_LEVEL ;
 int WQL_LINK ;
 scalar_t__ WQ_ITERATE_UNLINKED ;
 int assert (int) ;
 int waitq_clear_prepost_locked (struct waitq*) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_set_lock (struct waitq_set*) ;
 int waitq_set_unlock (struct waitq_set*) ;
 int waitq_unlink_cb ;
 int waitq_unlink_prepost_cb ;
 int waitqs_is_linked (struct waitq_set*) ;
 scalar_t__ walk_waitq_links (int ,struct waitq*,scalar_t__,int ,void*,int ) ;
 int wq_prepost_iterate (int ,void*,int ) ;

__attribute__((used)) static kern_return_t waitq_unlink_locked(struct waitq *waitq,
                                         struct waitq_set *wqset)
{
 uint64_t setid;
 kern_return_t kr;

 assert(!waitq_irq_safe(waitq));

 if (waitq->waitq_set_id == 0) {






  if (waitq->waitq_prepost_id != 0)
   (void)waitq_clear_prepost_locked(waitq);
  return KERN_NOT_IN_SET;
 }

 if (!waitqs_is_linked(wqset)) {




  return KERN_NOT_IN_SET;
 }

 setid = wqset->wqset_id;

 if (waitq->waitq_set_id == setid) {
  waitq->waitq_set_id = 0;






  (void)waitq_clear_prepost_locked(waitq);
  return KERN_SUCCESS;
 }
 kr = walk_waitq_links(LINK_WALK_ONE_LEVEL, waitq, waitq->waitq_set_id,
         WQL_LINK, (void *)&setid, waitq_unlink_cb);

 if (kr == WQ_ITERATE_UNLINKED) {
  struct wq_unlink_ctx ulctx;

  kr = KERN_SUCCESS;


  if (!wqset->wqset_q.waitq_prepost)
   goto out;

  assert(!waitq_irq_safe(&wqset->wqset_q));

  waitq_set_lock(wqset);





  ulctx.unlink_wq = waitq;
  ulctx.unlink_wqset = wqset;
  (void)wq_prepost_iterate(wqset->wqset_prepost_id, (void *)&ulctx,
      waitq_unlink_prepost_cb);
  waitq_set_unlock(wqset);
 } else {
  kr = KERN_NOT_IN_SET;
 }

out:
 return kr;
}
