
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct waitq_set {scalar_t__ wqset_id; } ;
struct waitq {scalar_t__ waitq_set_id; } ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;


 int FALSE ;
 int LINK_WALK_ONE_LEVEL ;
 int TRUE ;
 int WQL_ALL ;
 scalar_t__ WQ_ITERATE_FOUND ;
 scalar_t__ WQ_ITERATE_SUCCESS ;
 int assert (int) ;
 int panic (char*,struct waitq*) ;
 int waitq_inset_cb ;
 int waitq_irq_safe (struct waitq*) ;
 int waitq_lock (struct waitq*) ;
 int waitq_unlock (struct waitq*) ;
 int waitq_valid (struct waitq*) ;
 int waitqs_is_linked (struct waitq_set*) ;
 int waitqs_is_set (struct waitq_set*) ;
 scalar_t__ walk_waitq_links (int ,struct waitq*,scalar_t__,int ,void*,int ) ;

boolean_t waitq_member(struct waitq *waitq, struct waitq_set *wqset)
{
 kern_return_t kr = WQ_ITERATE_SUCCESS;
 uint64_t setid;

 if (!waitq_valid(waitq))
  panic("Invalid waitq: %p", waitq);
 assert(!waitq_irq_safe(waitq));

 if (!waitqs_is_set(wqset))
  return FALSE;

 waitq_lock(waitq);

 if (!waitqs_is_linked(wqset))
                goto out_unlock;

 setid = wqset->wqset_id;


 if (waitq->waitq_set_id == setid) {
  waitq_unlock(waitq);
  return TRUE;
 }


 kr = walk_waitq_links(LINK_WALK_ONE_LEVEL, waitq, waitq->waitq_set_id,
         WQL_ALL, (void *)&setid, waitq_inset_cb);

out_unlock:
 waitq_unlock(waitq);
 return (kr == WQ_ITERATE_FOUND);
}
