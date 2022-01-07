
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct tcq_if {int tif_maxpri; struct tcq_class** tif_classes; int tif_ifq; } ;
struct tcq_class {scalar_t__ cl_handle; } ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;

__attribute__((used)) static inline struct tcq_class *
tcq_clh_to_clp(struct tcq_if *tif, u_int32_t chandle)
{
 struct tcq_class *cl;
 int idx;

 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);

 for (idx = tif->tif_maxpri; idx >= 0; idx--)
  if ((cl = tif->tif_classes[idx]) != ((void*)0) &&
      cl->cl_handle == chandle)
   return (cl);

 return (((void*)0));
}
