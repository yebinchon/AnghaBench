
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tcq_if {int ** tif_classes; int tif_ifq; } ;
struct tcq_class {int dummy; } ;
typedef int classq_pkt_type_t ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int TCQ_MAXPRI ;
 struct tcq_class* tcq_class_create (struct tcq_if*,int,int ,int,int ,int ) ;
 int * tcq_clh_to_clp (struct tcq_if*,int ) ;

int
tcq_add_queue(struct tcq_if *tif, int priority, u_int32_t qlimit,
    int flags, u_int32_t qid, struct tcq_class **clp, classq_pkt_type_t ptype)
{
 struct tcq_class *cl;

 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);


 if (priority >= TCQ_MAXPRI)
  return (EINVAL);
 if (tif->tif_classes[priority] != ((void*)0))
  return (EBUSY);
 if (tcq_clh_to_clp(tif, qid) != ((void*)0))
  return (EBUSY);

 cl = tcq_class_create(tif, priority, qlimit, flags, qid, ptype);
 if (cl == ((void*)0))
  return (ENOMEM);

 if (clp != ((void*)0))
  *clp = cl;

 return (0);
}
