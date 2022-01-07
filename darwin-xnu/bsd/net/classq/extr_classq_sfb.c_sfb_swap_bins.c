
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct sfbbinstats {scalar_t__ pmark; scalar_t__ bytes; scalar_t__ pkts; } ;
struct sfb_fcl {int fclist; } ;
struct TYPE_3__ {int num_rehash; } ;
struct sfb {int sfb_flags; int sfb_current; TYPE_2__** sfb_bins; int sfb_qid; int sfb_ifp; TYPE_1__ sfb_stats; int sfb_clearpkts; } ;
struct TYPE_4__ {int freezetime; int fudge; } ;


 int LOG_DEBUG ;
 int SFBF_SUSPENDED ;
 int SFB_BINS ;
 struct sfbbinstats* SFB_BINST (struct sfb*,int,int,int) ;
 struct sfb_fcl* SFB_FC_LIST (struct sfb*,int) ;
 int SFB_LEVELS ;
 scalar_t__ SFB_MAX_PMARK ;
 scalar_t__ SFB_PMARK_WARM ;
 int STAILQ_EMPTY (int *) ;
 int VERIFY (int) ;
 int bzero (int *,int) ;
 scalar_t__ classq_verbose ;
 int if_name (int ) ;
 int log (int ,char*,int ,int ,int,int ) ;
 int sfb_fclist_append (struct sfb*,struct sfb_fcl*) ;
 int sfb_random (struct sfb*) ;

__attribute__((used)) static void
sfb_swap_bins(struct sfb *sp, u_int32_t len)
{
 int i, j, s;

 if (sp->sfb_flags & SFBF_SUSPENDED)
  return;

 s = sp->sfb_current;
 VERIFY((s + (s ^ 1)) == 1);

 (*sp->sfb_bins)[s].fudge = sfb_random(sp);
 sp->sfb_clearpkts = len;
 sp->sfb_stats.num_rehash++;

 s = (sp->sfb_current ^= 1);

 if (classq_verbose) {
  log(LOG_DEBUG, "%s: SFB qid=%d, set %d is now current, "
      "qlen=%d\n", if_name(sp->sfb_ifp), sp->sfb_qid, s, len);
 }


 bzero(&(*sp->sfb_bins)[s].freezetime,
     sizeof ((*sp->sfb_bins)[s].freezetime));


 for (i = 0; i < SFB_BINS; i++) {
  struct sfb_fcl *fcl = SFB_FC_LIST(sp, i);

  if (!STAILQ_EMPTY(&fcl->fclist))
   sfb_fclist_append(sp, fcl);

  for (j = 0; j < SFB_LEVELS; j++) {
   struct sfbbinstats *cbin, *wbin;

   cbin = SFB_BINST(sp, j, i, s);
   wbin = SFB_BINST(sp, j, i, s ^ 1);

   cbin->pkts = 0;
   cbin->bytes = 0;
   if (cbin->pmark > SFB_MAX_PMARK)
    cbin->pmark = SFB_MAX_PMARK;
   if (cbin->pmark < 0)
    cbin->pmark = 0;





   if (wbin->pmark > SFB_PMARK_WARM)
    wbin->pmark = SFB_PMARK_WARM;
  }
 }
}
