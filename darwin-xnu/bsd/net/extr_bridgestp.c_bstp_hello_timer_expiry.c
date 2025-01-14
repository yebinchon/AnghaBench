
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {int dummy; } ;
struct TYPE_2__ {int active; } ;
struct bstp_port {int bp_flags; scalar_t__ bp_role; int bp_desg_htime; int bp_hello_timer; TYPE_1__ bp_tc_timer; } ;


 int BSTP_PORT_NEWINFO ;
 scalar_t__ BSTP_ROLE_DESIGNATED ;
 scalar_t__ BSTP_ROLE_ROOT ;
 int bstp_timer_start (int *,int ) ;
 int bstp_transmit (struct bstp_state*,struct bstp_port*) ;

__attribute__((used)) static void
bstp_hello_timer_expiry(struct bstp_state *bs, struct bstp_port *bp)
{
 if ((bp->bp_flags & BSTP_PORT_NEWINFO) ||
     bp->bp_role == BSTP_ROLE_DESIGNATED ||
     (bp->bp_role == BSTP_ROLE_ROOT &&
      bp->bp_tc_timer.active == 1)) {
  bstp_timer_start(&bp->bp_hello_timer, bp->bp_desg_htime);
  bp->bp_flags |= BSTP_PORT_NEWINFO;
  bstp_transmit(bs, bp);
 }
}
