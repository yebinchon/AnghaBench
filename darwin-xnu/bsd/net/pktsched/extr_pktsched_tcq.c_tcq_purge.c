
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int tif_maxpri; int tif_ifq; struct tcq_class** tif_classes; } ;
struct tcq_class {int cl_q; } ;


 scalar_t__ IFCQ_LEN (int ) ;
 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int VERIFY (int) ;
 int qempty (int *) ;
 int tcq_purgeq (struct tcq_if*,struct tcq_class*,int ,int *,int *) ;

void
tcq_purge(struct tcq_if *tif)
{
 struct tcq_class *cl;
 int pri;

 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);

 for (pri = 0; pri <= tif->tif_maxpri; pri++) {
  if ((cl = tif->tif_classes[pri]) != ((void*)0) && !qempty(&cl->cl_q))
   tcq_purgeq(tif, cl, 0, ((void*)0), ((void*)0));
 }
 VERIFY(IFCQ_LEN(tif->tif_ifq) == 0);
}
