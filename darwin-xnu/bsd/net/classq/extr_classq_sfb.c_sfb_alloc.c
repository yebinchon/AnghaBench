
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sfb {int sfb_flags; scalar_t__ sfb_qid; scalar_t__ sfb_qlim; struct ifnet* sfb_ifp; struct sfb* sfb_fc_lists; struct sfb* sfb_bins; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int fclist; } ;


 int CLASSQ_EV_INIT ;
 int LOG_ERR ;
 int SFBF_ECN ;
 scalar_t__ SFBF_USERFLAGS ;
 int SFB_BINS ;
 TYPE_1__* SFB_FC_LIST (struct sfb*,int) ;
 int STAILQ_INIT (int *) ;
 int VERIFY (int) ;
 int bzero (struct sfb*,int ) ;
 int if_name (struct ifnet*) ;
 int log (int ,char*,int ,...) ;
 int sfb_bins_size ;
 int sfb_bins_zone ;
 int sfb_destroy (struct sfb*) ;
 int sfb_fcl_size ;
 int sfb_fcl_zone ;
 int sfb_resetq (struct sfb*,int ) ;
 int sfb_size ;
 int sfb_zone ;
 void* zalloc (int ) ;

struct sfb *
sfb_alloc(struct ifnet *ifp, u_int32_t qid, u_int32_t qlim, u_int32_t flags)
{
 struct sfb *sp;
 int i;

 VERIFY(ifp != ((void*)0) && qlim > 0);

 sp = zalloc(sfb_zone);
 if (sp == ((void*)0)) {
  log(LOG_ERR, "%s: SFB unable to allocate\n", if_name(ifp));
  return (((void*)0));
 }
 bzero(sp, sfb_size);

 if ((sp->sfb_bins = zalloc(sfb_bins_zone)) == ((void*)0)) {
  log(LOG_ERR, "%s: SFB unable to allocate bins\n", if_name(ifp));
  sfb_destroy(sp);
  return (((void*)0));
 }
 bzero(sp->sfb_bins, sfb_bins_size);

 if ((sp->sfb_fc_lists = zalloc(sfb_fcl_zone)) == ((void*)0)) {
  log(LOG_ERR, "%s: SFB unable to allocate flow control lists\n",
      if_name(ifp));
  sfb_destroy(sp);
  return (((void*)0));
 }
 bzero(sp->sfb_fc_lists, sfb_fcl_size);

 for (i = 0; i < SFB_BINS; ++i)
  STAILQ_INIT(&SFB_FC_LIST(sp, i)->fclist);

 sp->sfb_ifp = ifp;
 sp->sfb_qlim = qlim;
 sp->sfb_qid = qid;
 sp->sfb_flags = (flags & SFBF_USERFLAGS);

 if (sp->sfb_flags & SFBF_ECN) {
  sp->sfb_flags &= ~SFBF_ECN;
  log(LOG_ERR, "%s: SFB qid=%d, ECN not available; ignoring "
      "SFBF_ECN flag!\n", if_name(ifp), sp->sfb_qid);
 }


 sfb_resetq(sp, CLASSQ_EV_INIT);

 return (sp);
}
