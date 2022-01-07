
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_allsynced; } ;
struct bstp_port {int bp_infois; int bp_agreed; int bp_proposed; int bp_rcvdtc; int bp_rcvdtca; int bp_proposing; int bp_ptp_link; int bp_port_htime; int bp_port_fdelay; int bp_port_max_age; int bp_port_msg_age; int bp_port_pv; int bp_agree; } ;
struct bstp_config_unit {int cu_topology_change_ack; int cu_topology_change; int cu_agree; int cu_learning; int cu_forwarding; int cu_proposal; int cu_hello_time; int cu_forward_delay; int cu_max_age; int cu_message_age; int cu_pv; } ;




 int BSTP_INFO_RECEIVED ;
 int BSTP_LOCK_ASSERT (struct bstp_state*) ;
 int BSTP_MIN_HELLO_TIME ;





 int bstp_assign_roles (struct bstp_state*) ;
 int bstp_pdu_bettersame (struct bstp_port*,int) ;
 int bstp_pdu_rcvtype (struct bstp_port*,struct bstp_config_unit*) ;
 int bstp_set_timer_msgage (struct bstp_port*) ;
 int bstp_update_state (struct bstp_state*,struct bstp_port*) ;

__attribute__((used)) static void
bstp_received_bpdu(struct bstp_state *bs, struct bstp_port *bp,
    struct bstp_config_unit *cu)
{
 int type;

 BSTP_LOCK_ASSERT(bs);


 switch (bp->bp_infois) {
  case 133:
  case 134:
   return;
 }

 type = bstp_pdu_rcvtype(bp, cu);

 switch (type) {
  case 128:
   bs->bs_allsynced = 0;
   bp->bp_agreed = 0;
   bp->bp_proposing = 0;

   if (cu->cu_proposal && cu->cu_forwarding == 0)
    bp->bp_proposed = 1;
   if (cu->cu_topology_change)
    bp->bp_rcvdtc = 1;
   if (cu->cu_topology_change_ack)
    bp->bp_rcvdtca = 1;

   if (bp->bp_agree &&
       !bstp_pdu_bettersame(bp, BSTP_INFO_RECEIVED))
    bp->bp_agree = 0;


   bp->bp_port_pv = cu->cu_pv;
   bp->bp_port_msg_age = cu->cu_message_age;
   bp->bp_port_max_age = cu->cu_max_age;
   bp->bp_port_fdelay = cu->cu_forward_delay;
   bp->bp_port_htime =
    (cu->cu_hello_time > BSTP_MIN_HELLO_TIME ?
     cu->cu_hello_time : BSTP_MIN_HELLO_TIME);


   bstp_set_timer_msgage(bp);

   bp->bp_infois = BSTP_INFO_RECEIVED;
   bstp_assign_roles(bs);
   break;

  case 129:
   if (cu->cu_proposal && cu->cu_forwarding == 0)
    bp->bp_proposed = 1;
   if (cu->cu_topology_change)
    bp->bp_rcvdtc = 1;
   if (cu->cu_topology_change_ack)
    bp->bp_rcvdtca = 1;


   bstp_set_timer_msgage(bp);
   break;

  case 132:
   if (cu->cu_learning) {
    bp->bp_agreed = 1;
    bp->bp_proposing = 0;
   }
   break;

  case 131:




   if (cu->cu_agree && bp->bp_ptp_link) {
    bp->bp_agreed = 1;
    bp->bp_proposing = 0;
   } else
    bp->bp_agreed = 0;

   if (cu->cu_topology_change)
    bp->bp_rcvdtc = 1;
   if (cu->cu_topology_change_ack)
    bp->bp_rcvdtca = 1;
   break;

  case 130:
   return;
 }

 bstp_update_state(bs, bp);
}
