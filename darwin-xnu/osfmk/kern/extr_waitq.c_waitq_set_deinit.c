
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ waitq_eventmask; scalar_t__ waitq_isvalid; scalar_t__ waitq_prepost; scalar_t__ waitq_fifo; } ;
struct waitq_set {scalar_t__ wqset_id; scalar_t__ wqset_prepost_id; TYPE_2__ wqset_q; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct waitq_link {TYPE_1__ wql_setid; } ;


 scalar_t__ WQL_WQS ;
 int assert (int) ;
 int delay (int) ;
 int panic (char*,struct waitq_set*) ;
 int waitq_irq_safe (TYPE_2__*) ;
 int waitq_set_lock (struct waitq_set*) ;
 int waitq_set_unlock (struct waitq_set*) ;
 int waitq_unlink_all_unlock (TYPE_2__*) ;
 scalar_t__ waitqs_is_linked (struct waitq_set*) ;
 int waitqs_is_set (struct waitq_set*) ;
 int wq_prepost_iterate (scalar_t__,int *,int ) ;
 struct waitq_link* wql_get_link (scalar_t__) ;
 int wql_invalidate (struct waitq_link*) ;
 int wql_put_link (struct waitq_link*) ;
 int wql_refcnt (struct waitq_link*) ;
 scalar_t__ wql_type (struct waitq_link*) ;
 int wqset_clear_prepost_chain_cb ;

void waitq_set_deinit(struct waitq_set *wqset)
{
 struct waitq_link *link = ((void*)0);
 uint64_t set_id, prepost_id;

 if (!waitqs_is_set(wqset))
  panic("trying to de-initialize an invalid wqset @%p", wqset);

 assert(!waitq_irq_safe(&wqset->wqset_q));

 waitq_set_lock(wqset);

 set_id = wqset->wqset_id;

 if (waitqs_is_linked(wqset) || set_id == 0) {


  link = wql_get_link(set_id);
  if (link) {
   wql_invalidate(link);
  }

  if (!link || wqset->wqset_id != set_id || set_id != link->wql_setid.id) {
   if (link) {
    wql_put_link(link);
   }
   waitq_set_unlock(wqset);
   return;
  }


  assert(link != ((void*)0) && wql_type(link) == WQL_WQS);

  wqset->wqset_id = 0;
 }
 prepost_id = 0;
 if (wqset->wqset_q.waitq_prepost && wqset->wqset_prepost_id) {
  assert(link != ((void*)0));
  prepost_id = wqset->wqset_prepost_id;
 }

 wqset->wqset_prepost_id = 0;

 wqset->wqset_q.waitq_fifo = 0;
 wqset->wqset_q.waitq_prepost = 0;
 wqset->wqset_q.waitq_isvalid = 0;


 wqset->wqset_q.waitq_eventmask = 0;

 waitq_unlink_all_unlock(&wqset->wqset_q);



 if (link) {







  while (wql_refcnt(link) > 1)
   delay(1);
  wql_put_link(link);
 }



 if (prepost_id)
  (void)wq_prepost_iterate(prepost_id, ((void*)0),
      wqset_clear_prepost_chain_cb);
}
