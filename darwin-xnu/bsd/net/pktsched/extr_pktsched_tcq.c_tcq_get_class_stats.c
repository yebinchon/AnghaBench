
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tcq_if {int tif_ifq; } ;
struct tcq_classstats {int sfb; int qstate; int qtype; int dropcnt; int xmitcnt; int period; int qlimit; int qlength; int priority; int class_handle; } ;
struct tcq_class {int * cl_sfb; int cl_q; int cl_dropcnt; int cl_xmitcnt; int cl_period; int cl_pri; int cl_handle; } ;


 int EINVAL ;
 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 scalar_t__ q_is_sfb (int *) ;
 int qlen (int *) ;
 int qlimit (int *) ;
 int qstate (int *) ;
 int qtype (int *) ;
 int sfb_getstats (int *,int *) ;
 struct tcq_class* tcq_clh_to_clp (struct tcq_if*,int ) ;

int
tcq_get_class_stats(struct tcq_if *tif, u_int32_t qid,
    struct tcq_classstats *sp)
{
 struct tcq_class *cl;

 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);

 if ((cl = tcq_clh_to_clp(tif, qid)) == ((void*)0))
  return (EINVAL);

 sp->class_handle = cl->cl_handle;
 sp->priority = cl->cl_pri;
 sp->qlength = qlen(&cl->cl_q);
 sp->qlimit = qlimit(&cl->cl_q);
 sp->period = cl->cl_period;
 sp->xmitcnt = cl->cl_xmitcnt;
 sp->dropcnt = cl->cl_dropcnt;

 sp->qtype = qtype(&cl->cl_q);
 sp->qstate = qstate(&cl->cl_q);

 if (q_is_sfb(&cl->cl_q) && cl->cl_sfb != ((void*)0))
  sfb_getstats(cl->cl_sfb, &sp->sfb);

 return (0);
}
