
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int qf_qflags; } ;




 int QTF_WANTED ;
 int dq_list_lock () ;
 int dq_list_unlock () ;
 int wakeup (int*) ;

void
qf_put(struct quotafile *qfp, int type)
{

        dq_list_lock();

        switch (type) {

 case 128:
 case 129:
         qfp->qf_qflags &= ~type;
  break;
 }
 if ( (qfp->qf_qflags & QTF_WANTED) ) {
         qfp->qf_qflags &= ~QTF_WANTED;
  wakeup(&qfp->qf_qflags);
 }
 dq_list_unlock();
}
