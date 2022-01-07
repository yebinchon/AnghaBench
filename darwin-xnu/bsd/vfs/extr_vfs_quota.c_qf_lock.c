
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int qf_lock; } ;


 int lck_mtx_lock (int *) ;

__attribute__((used)) static void
qf_lock(struct quotafile *qfp)
{
 lck_mtx_lock(&qfp->qf_lock);
}
