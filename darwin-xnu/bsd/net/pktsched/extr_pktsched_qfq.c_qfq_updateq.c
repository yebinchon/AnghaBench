
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct qfq_if {int qif_ifq; } ;
struct qfq_class {int cl_inv_w; int * cl_sfb; int cl_q; int cl_handle; } ;
typedef int cqev_t ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int LOG_DEBUG ;
 int QFQIF_IFP (struct qfq_if*) ;
 int QFQ_ONE_FP ;
 int if_name (int ) ;
 int ifclassq_ev2str (int ) ;
 int log (int ,char*,int ,int ,int ,int ,int ) ;
 scalar_t__ pktsched_verbose ;
 scalar_t__ q_is_sfb (int *) ;
 int qfq_style (struct qfq_if*) ;
 void sfb_updateq (int *,int ) ;

__attribute__((used)) static void
qfq_updateq(struct qfq_if *qif, struct qfq_class *cl, cqev_t ev)
{
 IFCQ_LOCK_ASSERT_HELD(qif->qif_ifq);

 if (pktsched_verbose) {
  log(LOG_DEBUG, "%s: %s update qid=%d weight=%d event=%s\n",
      if_name(QFQIF_IFP(qif)), qfq_style(qif),
      cl->cl_handle, (u_int32_t)(QFQ_ONE_FP / cl->cl_inv_w),
      ifclassq_ev2str(ev));
 }

 if (q_is_sfb(&cl->cl_q) && cl->cl_sfb != ((void*)0))
  return (sfb_updateq(cl->cl_sfb, ev));
}
