
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {scalar_t__ bs_root_fdelay; scalar_t__ bs_root_max_age; } ;
struct TYPE_2__ {scalar_t__ active; } ;
struct bstp_port {int bp_protover; TYPE_1__ bp_tc_timer; int bp_flags; scalar_t__ bp_desg_htime; struct bstp_state* bp_bs; } ;


 int BSTP_PORT_NEWINFO ;


 scalar_t__ BSTP_TICK_VAL ;
 int bstp_timer_start (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
bstp_set_timer_tc(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;

 if (bp->bp_tc_timer.active)
  return;

 switch (bp->bp_protover) {
  case 129:
   bstp_timer_start(&bp->bp_tc_timer,
       bp->bp_desg_htime + BSTP_TICK_VAL);
   bp->bp_flags |= BSTP_PORT_NEWINFO;
   break;

  case 128:
   bstp_timer_start(&bp->bp_tc_timer,
       bs->bs_root_max_age + bs->bs_root_fdelay);
   break;
 }
}
