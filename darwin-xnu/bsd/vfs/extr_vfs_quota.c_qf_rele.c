
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {scalar_t__ qf_refcnt; int qf_qflags; } ;


 int QTF_WANTED ;
 int wakeup (int*) ;

__attribute__((used)) static void
qf_rele(struct quotafile *qfp)
{
 qfp->qf_refcnt--;

 if ( (qfp->qf_qflags & QTF_WANTED) && qfp->qf_refcnt == 0) {
         qfp->qf_qflags &= ~QTF_WANTED;
         wakeup(&qfp->qf_qflags);
 }
}
