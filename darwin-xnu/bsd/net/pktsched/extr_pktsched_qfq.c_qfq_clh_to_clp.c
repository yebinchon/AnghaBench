
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct qfq_if {int qif_maxclasses; struct qfq_class** qif_class_tbl; int qif_ifq; } ;
struct qfq_class {int cl_handle; } ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;

__attribute__((used)) static inline struct qfq_class *
qfq_clh_to_clp(struct qfq_if *qif, u_int32_t chandle)
{
 struct qfq_class *cl;
 int i;

 IFCQ_LOCK_ASSERT_HELD(qif->qif_ifq);





 i = chandle % qif->qif_maxclasses;
 if ((cl = qif->qif_class_tbl[i]) != ((void*)0) && cl->cl_handle == chandle)
  return (cl);
 for (i = 0; i < qif->qif_maxclasses; i++)
  if ((cl = qif->qif_class_tbl[i]) != ((void*)0) &&
      cl->cl_handle == chandle)
   return (cl);

 return (((void*)0));
}
