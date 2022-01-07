
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int tif_ifq; } ;
struct tcq_class {int * cl_sfb; int cl_q; int cl_pri; int cl_handle; } ;
typedef int cqev_t ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int LOG_DEBUG ;
 int TCQIF_IFP (struct tcq_if*) ;
 int if_name (int ) ;
 int ifclassq_ev2str (int ) ;
 int log (int ,char*,int ,int ,int ,int ,int ) ;
 scalar_t__ pktsched_verbose ;
 scalar_t__ q_is_sfb (int *) ;
 void sfb_updateq (int *,int ) ;
 int tcq_style (struct tcq_if*) ;

__attribute__((used)) static void
tcq_updateq(struct tcq_if *tif, struct tcq_class *cl, cqev_t ev)
{
 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);

 if (pktsched_verbose) {
  log(LOG_DEBUG, "%s: %s update qid=%d pri=%d event=%s\n",
      if_name(TCQIF_IFP(tif)), tcq_style(tif),
      cl->cl_handle, cl->cl_pri, ifclassq_ev2str(ev));
 }

 if (q_is_sfb(&cl->cl_q) && cl->cl_sfb != ((void*)0))
  return (sfb_updateq(cl->cl_sfb, ev));
}
