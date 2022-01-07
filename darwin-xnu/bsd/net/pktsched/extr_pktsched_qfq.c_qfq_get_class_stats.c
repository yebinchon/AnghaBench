
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct qfq_if {int qif_ifq; } ;
struct qfq_classstats {int weight; int sfb; int qstate; int qtype; int dropcnt; int xmitcnt; int period; int qlimit; int qlength; int lmax; int index; int class_handle; } ;
struct qfq_class {int cl_inv_w; int * cl_sfb; int cl_q; int cl_dropcnt; int cl_xmitcnt; int cl_period; int cl_lmax; TYPE_1__* cl_grp; int cl_handle; } ;
struct TYPE_2__ {int qfg_index; } ;


 int EINVAL ;
 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int QFQ_ONE_FP ;
 scalar_t__ q_is_sfb (int *) ;
 struct qfq_class* qfq_clh_to_clp (struct qfq_if*,int ) ;
 int qlen (int *) ;
 int qlimit (int *) ;
 int qstate (int *) ;
 int qtype (int *) ;
 int sfb_getstats (int *,int *) ;

int
qfq_get_class_stats(struct qfq_if *qif, u_int32_t qid,
    struct qfq_classstats *sp)
{
 struct qfq_class *cl;

 IFCQ_LOCK_ASSERT_HELD(qif->qif_ifq);

 if ((cl = qfq_clh_to_clp(qif, qid)) == ((void*)0))
  return (EINVAL);

 sp->class_handle = cl->cl_handle;
 sp->index = cl->cl_grp->qfg_index;
 sp->weight = (QFQ_ONE_FP / cl->cl_inv_w);
 sp->lmax = cl->cl_lmax;
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
