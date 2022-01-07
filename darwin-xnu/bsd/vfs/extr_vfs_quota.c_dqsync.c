
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_flags; } ;


 int DQ_MOD ;
 struct dquot* NODQUOT ;
 int dqlock (struct dquot*) ;
 int dqsync_locked (struct dquot*) ;
 int dqunlock (struct dquot*) ;

int
dqsync(struct dquot *dq)
{
        int error = 0;

 if (dq != NODQUOT) {
         dqlock(dq);

  if ( (dq->dq_flags & DQ_MOD) )
         error = dqsync_locked(dq);

  dqunlock(dq);
 }
 return (error);
}
