
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_type; } ;
struct bstp_state {int bs_bplist; } ;
struct bstp_port {int bp_active; int bp_flags; struct ifnet* bp_ifp; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_PORT_NEWINFO ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int EINVAL ;

 int KASSERT (int,char*) ;
 int LIST_INSERT_HEAD (int *,struct bstp_port*,int ) ;
 int bp_next ;
 int bstp_reinit (struct bstp_state*) ;
 int bstp_update_roles (struct bstp_state*,struct bstp_port*) ;

int
bstp_enable(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;
 struct ifnet *ifp = bp->bp_ifp;

 KASSERT(bp->bp_active == 0, ("already a bstp member"));

 switch (ifp->if_type) {
  case 128:
   break;
  default:

   return (EINVAL);
 }

 BSTP_LOCK(bs);
 LIST_INSERT_HEAD(&bs->bs_bplist, bp, bp_next);
 bp->bp_active = 1;
 bp->bp_flags |= BSTP_PORT_NEWINFO;
 bstp_reinit(bs);
 bstp_update_roles(bs, bp);
 BSTP_UNLOCK(bs);
 return (0);
}
