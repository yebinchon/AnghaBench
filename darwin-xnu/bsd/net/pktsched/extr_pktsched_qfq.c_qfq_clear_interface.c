
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_if {int qif_maxclasses; struct qfq_class** qif_class_tbl; int qif_ifq; } ;
struct qfq_class {int dummy; } ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int qfq_class_destroy (struct qfq_if*,struct qfq_class*) ;

__attribute__((used)) static int
qfq_clear_interface(struct qfq_if *qif)
{
 struct qfq_class *cl;
 int i;

 IFCQ_LOCK_ASSERT_HELD(qif->qif_ifq);


 for (i = 0; i < qif->qif_maxclasses; i++)
  if ((cl = qif->qif_class_tbl[i]) != ((void*)0))
   qfq_class_destroy(qif, cl);

 return (0);
}
