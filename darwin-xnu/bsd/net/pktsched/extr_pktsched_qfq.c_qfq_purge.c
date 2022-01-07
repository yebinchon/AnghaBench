
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_if {int qif_maxclasses; int qif_ifq; struct qfq_class** qif_class_tbl; } ;
struct qfq_class {int dummy; } ;


 scalar_t__ IFCQ_LEN (int ) ;
 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int VERIFY (int) ;
 int qfq_purgeq (struct qfq_if*,struct qfq_class*,int ,int *,int *) ;

void
qfq_purge(struct qfq_if *qif)
{
 struct qfq_class *cl;
 int i;

 IFCQ_LOCK_ASSERT_HELD(qif->qif_ifq);

 for (i = 0; i < qif->qif_maxclasses; i++) {
  if ((cl = qif->qif_class_tbl[i]) != ((void*)0))
   qfq_purgeq(qif, cl, 0, ((void*)0), ((void*)0));
 }
 VERIFY(IFCQ_LEN(qif->qif_ifq) == 0);
}
