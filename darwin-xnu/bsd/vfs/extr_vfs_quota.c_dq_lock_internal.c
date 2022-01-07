
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dq_lflags; } ;


 int DQ_LLOCK ;
 int DQ_LWANT ;
 int PVFS ;
 int msleep (int*,int ,int ,char*,int *) ;
 int quota_list_mtx_lock ;

void
dq_lock_internal(struct dquot *dq)
{
        while (dq->dq_lflags & DQ_LLOCK) {
         dq->dq_lflags |= DQ_LWANT;
         msleep(&dq->dq_lflags, quota_list_mtx_lock, PVFS, "dq_lock_internal", ((void*)0));
 }
 dq->dq_lflags |= DQ_LLOCK;
}
