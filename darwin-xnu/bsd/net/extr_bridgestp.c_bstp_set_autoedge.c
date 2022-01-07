
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ active; } ;
struct bstp_port {int bp_flags; TYPE_1__ bp_edge_delay_timer; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;
 int BSTP_PORT_AUTOEDGE ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int bstp_edge_delay_expiry (struct bstp_state*,struct bstp_port*) ;

int
bstp_set_autoedge(struct bstp_port *bp, int set)
{
 struct bstp_state *bs = bp->bp_bs;

 BSTP_LOCK(bs);
 if (set) {
  bp->bp_flags |= BSTP_PORT_AUTOEDGE;

  if (bp->bp_edge_delay_timer.active == 0)
   bstp_edge_delay_expiry(bs, bp);
 } else
  bp->bp_flags &= ~BSTP_PORT_AUTOEDGE;
 BSTP_UNLOCK(bs);
 return (0);
}
