
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct waitq_set {scalar_t__ wqset_id; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_2__ wql_setid; TYPE_1__ wql_wqs; } ;


 int WQL_WQS ;
 scalar_t__ WQSET_NOT_LINKED ;
 int assert (int) ;
 int current_thread () ;
 scalar_t__ get_preemption_level () ;
 int panic (char*,struct waitq_set*) ;
 int waitq_set_lock (struct waitq_set*) ;
 scalar_t__ waitq_set_should_lazy_init_link (struct waitq_set*) ;
 int waitq_set_unlock (struct waitq_set*) ;
 scalar_t__ waitq_wait_possible (int ) ;
 struct waitq_link* wql_alloc_link (int ) ;
 int wql_mkvalid (struct waitq_link*) ;
 int wql_put_link (struct waitq_link*) ;

void
waitq_set_lazy_init_link(struct waitq_set *wqset)
{
 struct waitq_link *link;

 assert(get_preemption_level() == 0 && waitq_wait_possible(current_thread()));

 waitq_set_lock(wqset);
 if (!waitq_set_should_lazy_init_link(wqset)){
  waitq_set_unlock(wqset);
  return;
 }

 assert(wqset->wqset_id == WQSET_NOT_LINKED);
 waitq_set_unlock(wqset);

 link = wql_alloc_link(WQL_WQS);
 if (!link)
  panic("Can't allocate link object for waitq set: %p", wqset);

 link->wql_wqs.wql_set = wqset;

 waitq_set_lock(wqset);
 if (waitq_set_should_lazy_init_link(wqset)) {
  wql_mkvalid(link);
  wqset->wqset_id = link->wql_setid.id;
 }

 assert(wqset->wqset_id != 0);
 assert(wqset->wqset_id != WQSET_NOT_LINKED);

 waitq_set_unlock(wqset);

 wql_put_link(link);

 return;
}
