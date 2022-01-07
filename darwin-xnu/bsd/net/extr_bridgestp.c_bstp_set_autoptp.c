
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int dummy; } ;
struct bstp_port {scalar_t__ bp_role; int bp_flags; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_PORT_AUTOPTP ;
 scalar_t__ BSTP_ROLE_DISABLED ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int bstp_ifupdstatus (struct bstp_state*,struct bstp_port*) ;

int
bstp_set_autoptp(struct bstp_port *bp, int set)
{
 struct bstp_state *bs = bp->bp_bs;

 BSTP_LOCK(bs);
 if (set) {
  bp->bp_flags |= BSTP_PORT_AUTOPTP;
  if (bp->bp_role != BSTP_ROLE_DISABLED)
   bstp_ifupdstatus(bs, bp);
 } else
  bp->bp_flags &= ~BSTP_PORT_AUTOPTP;
 BSTP_UNLOCK(bs);
 return (0);
}
