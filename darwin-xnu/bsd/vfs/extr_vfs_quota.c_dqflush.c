
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct TYPE_4__ {struct dquot* le_next; } ;
struct dquot {TYPE_1__* dq_qfile; scalar_t__ dq_cnt; TYPE_2__ dq_hash; } ;
struct dqhash {struct dquot* lh_first; } ;
struct TYPE_3__ {struct vnode* qf_vp; } ;


 int LIST_REMOVE (struct dquot*,int ) ;
 int dq_hash ;
 int dq_list_lock () ;
 int dq_list_unlock () ;
 size_t dqhash ;
 struct dqhash* dqhashtbl ;
 int dqisinitialized () ;
 int panic (char*) ;

void
dqflush(struct vnode *vp)
{
 struct dquot *dq, *nextdq;
 struct dqhash *dqh;

 if (!dqisinitialized())
  return;






 dq_list_lock();

 for (dqh = &dqhashtbl[dqhash]; dqh >= dqhashtbl; dqh--) {
  for (dq = dqh->lh_first; dq; dq = nextdq) {
   nextdq = dq->dq_hash.le_next;
   if (dq->dq_qfile->qf_vp != vp)
    continue;
   if (dq->dq_cnt)
    panic("dqflush: stray dquot");
   LIST_REMOVE(dq, dq_hash);
   dq->dq_qfile = ((void*)0);
  }
 }
 dq_list_unlock();
}
