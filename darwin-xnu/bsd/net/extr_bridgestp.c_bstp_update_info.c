
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {scalar_t__ bs_allsynced; } ;
struct bstp_port {int bp_flags; int bp_infois; int bp_desg_htime; int bp_port_htime; int bp_desg_fdelay; int bp_port_fdelay; int bp_desg_max_age; int bp_port_max_age; int bp_desg_msg_age; int bp_port_msg_age; int bp_desg_pv; int bp_port_pv; scalar_t__ bp_synced; scalar_t__ bp_agreed; scalar_t__ bp_proposed; scalar_t__ bp_proposing; struct bstp_state* bp_bs; } ;


 int BSTP_INFO_MINE ;
 int BSTP_PORT_NEWINFO ;
 int bstp_pdu_bettersame (struct bstp_port*,int ) ;

__attribute__((used)) static void
bstp_update_info(struct bstp_port *bp)
{
 struct bstp_state *bs = bp->bp_bs;

 bp->bp_proposing = 0;
 bp->bp_proposed = 0;

 if (bp->bp_agreed && !bstp_pdu_bettersame(bp, BSTP_INFO_MINE))
  bp->bp_agreed = 0;

 if (bp->bp_synced && !bp->bp_agreed) {
  bp->bp_synced = 0;
  bs->bs_allsynced = 0;
 }


 bp->bp_port_pv = bp->bp_desg_pv;
 bp->bp_port_msg_age = bp->bp_desg_msg_age;
 bp->bp_port_max_age = bp->bp_desg_max_age;
 bp->bp_port_fdelay = bp->bp_desg_fdelay;
 bp->bp_port_htime = bp->bp_desg_htime;
 bp->bp_infois = BSTP_INFO_MINE;


 bp->bp_flags |= BSTP_PORT_NEWINFO;
}
