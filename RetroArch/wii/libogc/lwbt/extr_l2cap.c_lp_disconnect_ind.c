
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct l2cap_pcb {int state; int remote_bdaddr; struct l2cap_pcb* next; } ;
struct bd_addr {int dummy; } ;
typedef int err_t ;


 int ERR_OK ;
 int L2CAP_CLOSED ;
 int L2CA_ACTION_DISCONN_IND (struct l2cap_pcb*,int ,int ) ;
 int LOG (char*) ;
 scalar_t__ bd_addr_cmp (int *,struct bd_addr*) ;
 struct l2cap_pcb* l2cap_active_pcbs ;
 int l2cap_disconnect_bb_cb (struct bd_addr*,int ) ;

void lp_disconnect_ind(struct bd_addr *bdaddr,u8_t reason)
{
 struct l2cap_pcb *pcb, *tpcb;
 err_t ret;

 (void)ret;

 for(pcb = l2cap_active_pcbs; pcb != ((void*)0);) {
  tpcb = pcb->next;
  LOG("lp_disconnect_ind: Find a pcb with a matching Bluetooth address\n");

  if(bd_addr_cmp(&(pcb->remote_bdaddr), bdaddr)) {
   pcb->state = L2CAP_CLOSED;
   LOG("lp_disconnect_ind: Notify application\n");
   L2CA_ACTION_DISCONN_IND(pcb,ERR_OK,ret);
  }
  pcb = tpcb;
 }
 if(l2cap_disconnect_bb_cb) l2cap_disconnect_bb_cb(bdaddr,reason);
}
