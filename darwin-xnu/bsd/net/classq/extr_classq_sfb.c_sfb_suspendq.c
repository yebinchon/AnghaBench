
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb {int sfb_flags; int sfb_qid; struct ifnet* sfb_ifp; } ;
struct ifnet {int dummy; } ;
typedef int class_queue_t ;
typedef scalar_t__ boolean_t ;


 int ENOTSUP ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int SFBF_FLOWCTL ;
 int SFBF_SUSPENDED ;
 int VERIFY (int ) ;
 scalar_t__ classq_verbose ;
 int if_name (struct ifnet*) ;
 int log (int ,char*,int ,int ,char*) ;
 int qlen (int *) ;
 int sfb_swap_bins (struct sfb*,int ) ;

int
sfb_suspendq(struct sfb *sp, class_queue_t *q, boolean_t on)
{
#pragma unused(q)
 struct ifnet *ifp = sp->sfb_ifp;

 VERIFY(ifp != ((void*)0));

 if ((on && (sp->sfb_flags & SFBF_SUSPENDED)) ||
     (!on && !(sp->sfb_flags & SFBF_SUSPENDED)))
  return (0);

 if (!(sp->sfb_flags & SFBF_FLOWCTL)) {
  log(LOG_ERR, "%s: SFB qid=%d, unable to %s queue since "
      "flow-control is not enabled", if_name(ifp), sp->sfb_qid,
      (on ? "suspend" : "resume"));
  return (ENOTSUP);
 }

 if (classq_verbose) {
  log(LOG_DEBUG, "%s: SFB qid=%d, setting state to %s",
      if_name(ifp), sp->sfb_qid, (on ? "SUSPENDED" : "RUNNING"));
 }

 if (on) {
  sp->sfb_flags |= SFBF_SUSPENDED;
 } else {
  sp->sfb_flags &= ~SFBF_SUSPENDED;
  sfb_swap_bins(sp, qlen(q));
 }

 return (0);
}
