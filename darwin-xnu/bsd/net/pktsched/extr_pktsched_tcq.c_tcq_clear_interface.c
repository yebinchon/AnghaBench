
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int tif_maxpri; struct tcq_class** tif_classes; int tif_ifq; } ;
struct tcq_class {int dummy; } ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int tcq_class_destroy (struct tcq_if*,struct tcq_class*) ;

__attribute__((used)) static int
tcq_clear_interface(struct tcq_if *tif)
{
 struct tcq_class *cl;
 int pri;

 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);


 for (pri = 0; pri <= tif->tif_maxpri; pri++)
  if ((cl = tif->tif_classes[pri]) != ((void*)0))
   tcq_class_destroy(tif, cl);

 return (0);
}
