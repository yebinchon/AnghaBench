
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int qf_lock; scalar_t__ qf_qflags; int qf_vp; } ;


 int NULLVP ;
 int lck_mtx_init (int *,int ,int ) ;
 int qf_lck_attr ;
 int qf_lck_grp ;

void
dqfileinit(struct quotafile *qfp)
{
        qfp->qf_vp = NULLVP;
 qfp->qf_qflags = 0;

 lck_mtx_init(&qfp->qf_lock, qf_lck_grp, qf_lck_attr);
}
