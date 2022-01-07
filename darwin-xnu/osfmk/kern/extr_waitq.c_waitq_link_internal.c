
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {scalar_t__ right_setid; scalar_t__ left_setid; } ;
struct waitq_link {TYPE_2__ wql_setid; TYPE_1__ wql_link; } ;
struct waitq {scalar_t__ waitq_set_id; } ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_ALREADY_IN_SET ;
 scalar_t__ KERN_SUCCESS ;
 int LINK_WALK_ONE_LEVEL ;
 int WQL_ALL ;
 scalar_t__ WQSET_NOT_LINKED ;
 scalar_t__ WQ_ITERATE_FOUND ;
 int assert (int) ;
 int waitq_held (struct waitq*) ;
 int waitq_inset_cb ;
 scalar_t__ walk_waitq_links (int ,struct waitq*,scalar_t__,int ,void*,int ) ;
 struct waitq_link* wql_get_link (scalar_t__) ;
 int wql_mkvalid (struct waitq_link*) ;
 int wql_put_link (struct waitq_link*) ;

__attribute__((used)) static kern_return_t waitq_link_internal(struct waitq *waitq,
      uint64_t setid, struct waitq_link *link)
{
 struct waitq_link *qlink;
 kern_return_t kr;

 assert(waitq_held(waitq));
 assert(setid != 0);
 assert(setid != WQSET_NOT_LINKED);






 if (!waitq->waitq_set_id) {
  waitq->waitq_set_id = setid;
  return KERN_SUCCESS;
 }

 qlink = wql_get_link(waitq->waitq_set_id);
 if (!qlink) {




  waitq->waitq_set_id = setid;
  return KERN_SUCCESS;
 }
 wql_put_link(qlink);






 kr = walk_waitq_links(LINK_WALK_ONE_LEVEL, waitq, waitq->waitq_set_id,
         WQL_ALL, (void *)&setid, waitq_inset_cb);
 if (kr == WQ_ITERATE_FOUND)
  return KERN_ALREADY_IN_SET;
 link->wql_link.left_setid = setid;
 link->wql_link.right_setid = waitq->waitq_set_id;
 wql_mkvalid(link);

 waitq->waitq_set_id = link->wql_setid.id;

 return KERN_SUCCESS;
}
