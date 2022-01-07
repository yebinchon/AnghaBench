
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sfb_fcl {scalar_t__ cnt; int fclist; } ;
struct TYPE_3__ {int flow_feedback; } ;
struct sfb {TYPE_1__ sfb_stats; TYPE_2__* sfb_ifp; } ;
struct TYPE_4__ {int if_snd; } ;


 int IFCQ_CONVERT_LOCK (int *) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int VERIFY (int) ;
 int flowadv_add (int *) ;

__attribute__((used)) static void
sfb_fclist_append(struct sfb *sp, struct sfb_fcl *fcl)
{
 IFCQ_CONVERT_LOCK(&sp->sfb_ifp->if_snd);
 VERIFY(STAILQ_EMPTY(&fcl->fclist) || fcl->cnt > 0);
 sp->sfb_stats.flow_feedback += fcl->cnt;
 fcl->cnt = 0;

 flowadv_add(&fcl->fclist);
 VERIFY(fcl->cnt == 0 && STAILQ_EMPTY(&fcl->fclist));
}
