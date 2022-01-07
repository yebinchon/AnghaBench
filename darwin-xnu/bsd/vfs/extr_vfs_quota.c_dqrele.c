
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_cnt; int dq_flags; } ;


 int DQ_MOD ;
 struct dquot* NODQUOT ;
 int TAILQ_INSERT_TAIL (int *,struct dquot*,int ) ;
 int dq_freelist ;
 int dq_list_lock () ;
 int dq_list_unlock () ;
 int dq_unlock_internal (struct dquot*) ;
 int dqfreelist ;
 int dqlock (struct dquot*) ;
 int dqsync_locked (struct dquot*) ;
 int dqunlock (struct dquot*) ;

void
dqrele(struct dquot *dq)
{

 if (dq == NODQUOT)
  return;
 dqlock(dq);

 if (dq->dq_cnt > 1) {
  dq->dq_cnt--;

  dqunlock(dq);
  return;
 }
 if (dq->dq_flags & DQ_MOD)
  (void) dqsync_locked(dq);
 dq->dq_cnt--;

 dq_list_lock();
 TAILQ_INSERT_TAIL(&dqfreelist, dq, dq_freelist);
        dq_unlock_internal(dq);
 dq_list_unlock();
}
