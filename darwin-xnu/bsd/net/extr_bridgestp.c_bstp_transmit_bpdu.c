
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_state {int dummy; } ;
struct TYPE_2__ {int pv_root_id; int pv_dbridge_id; int pv_cost; } ;
struct bstp_port {int bp_port_id; int bp_desg_msg_age; int bp_desg_max_age; int bp_desg_htime; int bp_desg_fdelay; int bp_protover; TYPE_1__ bp_desg_pv; } ;
struct bstp_cbpdu {int cbu_bpdutype; int cbu_flags; void* cbu_forwarddelay; void* cbu_hellotime; void* cbu_maxage; void* cbu_messageage; void* cbu_portid; int cbu_bridgeaddr; void* cbu_bridgepri; int cbu_rootpathcost; int cbu_rootaddr; void* cbu_rootpri; } ;


 int BSTP_LOCK_ASSERT (struct bstp_state*) ;
 int BSTP_MSGTYPE_CFG ;
 int BSTP_MSGTYPE_RSTP ;


 int PV2ADDR (int,int ) ;
 int bstp_pdu_flags (struct bstp_port*) ;
 int bstp_send_bpdu (struct bstp_state*,struct bstp_port*,struct bstp_cbpdu*) ;
 int htonl (int ) ;
 void* htons (int) ;

__attribute__((used)) static void
bstp_transmit_bpdu(struct bstp_state *bs, struct bstp_port *bp)
{
 struct bstp_cbpdu bpdu;

 BSTP_LOCK_ASSERT(bs);

 bpdu.cbu_rootpri = htons(bp->bp_desg_pv.pv_root_id >> 48);
 PV2ADDR(bp->bp_desg_pv.pv_root_id, bpdu.cbu_rootaddr);

 bpdu.cbu_rootpathcost = htonl(bp->bp_desg_pv.pv_cost);

 bpdu.cbu_bridgepri = htons(bp->bp_desg_pv.pv_dbridge_id >> 48);
 PV2ADDR(bp->bp_desg_pv.pv_dbridge_id, bpdu.cbu_bridgeaddr);

 bpdu.cbu_portid = htons(bp->bp_port_id);
 bpdu.cbu_messageage = htons(bp->bp_desg_msg_age);
 bpdu.cbu_maxage = htons(bp->bp_desg_max_age);
 bpdu.cbu_hellotime = htons(bp->bp_desg_htime);
 bpdu.cbu_forwarddelay = htons(bp->bp_desg_fdelay);

 bpdu.cbu_flags = bstp_pdu_flags(bp);

 switch (bp->bp_protover) {
  case 128:
   bpdu.cbu_bpdutype = BSTP_MSGTYPE_CFG;
   break;

  case 129:
   bpdu.cbu_bpdutype = BSTP_MSGTYPE_RSTP;
   break;
 }

 bstp_send_bpdu(bs, bp, &bpdu);
}
