
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int tif_maxpri; struct tcq_class** tif_classes; int tif_ifq; } ;
struct tcq_class {int dummy; } ;
typedef int cqev_t ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int tcq_updateq (struct tcq_if*,struct tcq_class*,int ) ;

void
tcq_event(struct tcq_if *tif, cqev_t ev)
{
 struct tcq_class *cl;
 int pri;

 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);

 for (pri = 0; pri <= tif->tif_maxpri; pri++)
  if ((cl = tif->tif_classes[pri]) != ((void*)0))
   tcq_updateq(tif, cl, ev);
}
