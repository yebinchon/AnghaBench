
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quotafile {int qf_qflags; scalar_t__ qf_vp; int qf_refcnt; } ;


 int EINVAL ;
 scalar_t__ NULLVP ;
 int QTF_CLOSING ;
 int QTF_OPENING ;

__attribute__((used)) static int
qf_ref(struct quotafile *qfp)
{
        int error = 0;

 if ( (qfp->qf_qflags & (QTF_OPENING | QTF_CLOSING)) || (qfp->qf_vp == NULLVP) )
         error = EINVAL;
 else
         qfp->qf_refcnt++;

 return (error);
}
