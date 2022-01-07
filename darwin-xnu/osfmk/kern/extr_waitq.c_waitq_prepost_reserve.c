
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ waitq_lock_state_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ id; } ;
struct wq_prepost {TYPE_1__ wqp_prepostid; } ;
struct waitq {scalar_t__ waitq_set_id; scalar_t__ waitq_prepost_id; } ;


 scalar_t__ VM_KERNEL_UNSLIDE_OR_PERM (struct waitq*) ;
 scalar_t__ WAITQ_KEEP_LOCKED ;
 scalar_t__ WAITQ_UNLOCK ;
 int assert (int) ;
 int waitq_alloc_prepost_reservation (int,struct waitq*,int*,struct wq_prepost**) ;
 int waitq_count_prepost_reservation (struct waitq*,int,int) ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int wqdbg_v (char*,void*,int) ;

uint64_t waitq_prepost_reserve(struct waitq *waitq, int extra,
          waitq_lock_state_t lock_state)
{
 uint64_t reserved = 0;
 uint64_t prev_setid = 0, prev_prepostid = 0;
 struct wq_prepost *wqp = ((void*)0);
 int nalloc = 0, npreposts = 0;
 int keep_locked = (lock_state == WAITQ_KEEP_LOCKED);
 int unlocked = 0;

 wqdbg_v("Attempting to reserve prepost linkages for waitq %p (extra:%d)",
  (void *)VM_KERNEL_UNSLIDE_OR_PERM(waitq), extra);

 if (waitq == ((void*)0) && extra > 0) {






  nalloc = waitq_alloc_prepost_reservation(extra + 2, ((void*)0),
        &unlocked, &wqp);
  assert(nalloc == extra + 2);
  return wqp->wqp_prepostid.id;
 }

 assert(lock_state == WAITQ_KEEP_LOCKED || lock_state == WAITQ_UNLOCK);

 assert(!waitq_irq_safe(waitq));

 waitq_lock(waitq);


 prev_setid = waitq->waitq_set_id;
 prev_prepostid = waitq->waitq_prepost_id;






 if (prev_setid == 0 && keep_locked)
  goto out;

 npreposts = waitq_count_prepost_reservation(waitq, extra, keep_locked);


 if (npreposts == 0) {
  if (keep_locked)
   goto out;
  goto out_unlock;
 }

try_alloc:

 nalloc = waitq_alloc_prepost_reservation(npreposts, waitq,
       &unlocked, &wqp);

 if (!unlocked) {

  if (keep_locked)
   goto out;
  goto out_unlock;
 }
 if ((waitq->waitq_set_id == 0) ||
     (waitq->waitq_set_id == prev_setid &&
      waitq->waitq_prepost_id == prev_prepostid)) {
  if (keep_locked)
   goto out;
  goto out_unlock;
 }

 npreposts = waitq_count_prepost_reservation(waitq, extra, keep_locked);

 if (npreposts > nalloc) {
  prev_setid = waitq->waitq_set_id;
  prev_prepostid = waitq->waitq_prepost_id;
  npreposts = npreposts - nalloc;
  goto try_alloc;
 }

 if (keep_locked)
  goto out;

out_unlock:
 waitq_unlock(waitq);
out:
 if (wqp)
  reserved = wqp->wqp_prepostid.id;

 return reserved;
}
