
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct qfq_if {int qif_ifq; } ;
struct qfq_class {int dummy; } ;


 int EINVAL ;
 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int qfq_class_destroy (struct qfq_if*,struct qfq_class*) ;
 struct qfq_class* qfq_clh_to_clp (struct qfq_if*,int ) ;

int
qfq_remove_queue(struct qfq_if *qif, u_int32_t qid)
{
 struct qfq_class *cl;

 IFCQ_LOCK_ASSERT_HELD(qif->qif_ifq);

 if ((cl = qfq_clh_to_clp(qif, qid)) == ((void*)0))
  return (EINVAL);

 return (qfq_class_destroy(qif, cl));
}
