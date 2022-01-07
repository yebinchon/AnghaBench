
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {scalar_t__ dq_cnt; int dq_flags; } ;


 int DQ_MOD ;
 struct dquot* NODQUOT ;
 int TAILQ_INSERT_TAIL (int *,struct dquot*,int ) ;
 int dq_freelist ;
 int dq_list_lock () ;
 int dq_list_unlock () ;
 int dq_lock_internal (struct dquot*) ;
 int dq_unlock_internal (struct dquot*) ;
 int dqdirtylist ;
 int dqfreelist ;

void
dqreclaim(struct dquot *dq)
{

 if (dq == NODQUOT)
  return;

 dq_list_lock();
 dq_lock_internal(dq);

 if (--dq->dq_cnt > 0) {
         dq_unlock_internal(dq);
  dq_list_unlock();
  return;
 }
 if (dq->dq_flags & DQ_MOD)
  TAILQ_INSERT_TAIL(&dqdirtylist, dq, dq_freelist);
 else
  TAILQ_INSERT_TAIL(&dqfreelist, dq, dq_freelist);

 dq_unlock_internal(dq);
 dq_list_unlock();
}
