
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {scalar_t__ waitq_set_id; scalar_t__ waitq_prepost_id; } ;


 int LINK_WALK_FULL_DAG_UNLOCKED ;
 int WQL_WQS ;
 int waitq_prepost_reserve_cb ;
 int walk_waitq_links (int ,struct waitq*,scalar_t__,int ,void*,int ) ;

__attribute__((used)) static int waitq_count_prepost_reservation(struct waitq *waitq, int extra, int keep_locked)
{
 int npreposts = 0;







 if (waitq->waitq_set_id == 0) {
  npreposts = 3;
 } else {

  if (waitq->waitq_prepost_id == 0)
   npreposts = 3;
  (void)walk_waitq_links(LINK_WALK_FULL_DAG_UNLOCKED,
           waitq, waitq->waitq_set_id,
           WQL_WQS, (void *)&npreposts,
           waitq_prepost_reserve_cb);
 }

 if (extra > 0)
  npreposts += extra;

 if (npreposts == 0 && !keep_locked) {
  npreposts = 3;
 }

 return npreposts;
}
