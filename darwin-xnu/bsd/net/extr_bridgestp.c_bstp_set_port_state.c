
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bstp_port {int bp_state; int bp_statetask; int bp_forward_transitions; int bp_forward_delay_timer; TYPE_1__* bp_ifp; int bp_desg_fdelay; int bp_desg_htime; int bp_protover; } ;
struct TYPE_2__ {int if_xname; } ;





 int BSTP_PROTO_RSTP ;
 int DPRINTF (char*,int ) ;
 int bstp_task_enqueue (int *) ;
 int bstp_timer_start (int *,int ) ;
 int bstp_timer_stop (int *) ;

__attribute__((used)) static void
bstp_set_port_state(struct bstp_port *bp, int state)
{
 if (bp->bp_state == state)
  return;

 bp->bp_state = state;

 switch (bp->bp_state) {
  case 130:
   DPRINTF("state changed to DISCARDING on %s\n",
       bp->bp_ifp->if_xname);
   break;

  case 128:
   DPRINTF("state changed to LEARNING on %s\n",
       bp->bp_ifp->if_xname);

   bstp_timer_start(&bp->bp_forward_delay_timer,
       bp->bp_protover == BSTP_PROTO_RSTP ?
       bp->bp_desg_htime : bp->bp_desg_fdelay);
   break;

  case 129:
   DPRINTF("state changed to FORWARDING on %s\n",
       bp->bp_ifp->if_xname);

   bstp_timer_stop(&bp->bp_forward_delay_timer);

   bp->bp_forward_transitions++;
   break;
 }


 bstp_task_enqueue(&bp->bp_statetask);
}
