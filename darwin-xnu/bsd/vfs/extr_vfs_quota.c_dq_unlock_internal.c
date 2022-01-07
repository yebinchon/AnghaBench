
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_lflags; } ;


 int DQ_LLOCK ;
 int DQ_LWANT ;
 int wakeup (int*) ;

void
dq_unlock_internal(struct dquot *dq)
{
        int wanted = dq->dq_lflags & DQ_LWANT;

 dq->dq_lflags &= ~(DQ_LLOCK | DQ_LWANT);

 if (wanted)
         wakeup(&dq->dq_lflags);
}
