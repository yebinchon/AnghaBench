
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ waitq_prepost; } ;
struct waitq_set {TYPE_3__ wqset_q; scalar_t__ wqset_prepost_id; int wqset_id; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_4__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_2__ wql_setid; TYPE_1__ wql_wqs; } ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int WQL_WQS ;
 int waitq_set_unlock (struct waitq_set*) ;
 int waitq_unlink_all_unlock (TYPE_3__*) ;
 scalar_t__ waitqs_is_linked (struct waitq_set*) ;
 int wq_prepost_iterate (scalar_t__,int *,int ) ;
 int wqdbg_v (char*,int ) ;
 struct waitq_link* wql_get_link (int ) ;
 int wql_invalidate (struct waitq_link*) ;
 int wql_mkvalid (struct waitq_link*) ;
 int wql_put_link (struct waitq_link*) ;
 int wql_realloc_link (struct waitq_link*,int ) ;
 int wqset_clear_prepost_chain_cb ;

kern_return_t waitq_set_unlink_all_unlock(struct waitq_set *wqset)
{
 struct waitq_link *link;
 uint64_t prepost_id;

 wqdbg_v("unlink all queues from set 0x%llx", wqset->wqset_id);






 if (waitqs_is_linked(wqset)){


  link = wql_get_link(wqset->wqset_id);


  if (!link) {
   waitq_set_unlock(wqset);
   return KERN_SUCCESS;
  }

  wql_invalidate(link);


  wql_realloc_link(link, WQL_WQS);
  link->wql_wqs.wql_set = wqset;

  wqset->wqset_id = link->wql_setid.id;
  wql_mkvalid(link);
  wql_put_link(link);
 }


 prepost_id = 0;
 if (wqset->wqset_q.waitq_prepost && wqset->wqset_prepost_id)
  prepost_id = wqset->wqset_prepost_id;

 wqset->wqset_prepost_id = 0;
 waitq_unlink_all_unlock(&wqset->wqset_q);



 if (prepost_id)
  (void)wq_prepost_iterate(prepost_id, ((void*)0),
      wqset_clear_prepost_chain_cb);

 return KERN_SUCCESS;
}
