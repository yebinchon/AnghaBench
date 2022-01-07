
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tcq_if {int tif_ifq; } ;
struct tcq_class {int dummy; } ;


 int EINVAL ;
 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int tcq_class_destroy (struct tcq_if*,struct tcq_class*) ;
 struct tcq_class* tcq_clh_to_clp (struct tcq_if*,int ) ;

int
tcq_remove_queue(struct tcq_if *tif, u_int32_t qid)
{
 struct tcq_class *cl;

 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);

 if ((cl = tcq_clh_to_clp(tif, qid)) == ((void*)0))
  return (EINVAL);

 return (tcq_class_destroy(tif, cl));
}
