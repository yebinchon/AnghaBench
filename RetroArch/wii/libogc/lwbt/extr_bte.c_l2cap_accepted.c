
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct l2cap_pcb {int dummy; } ;
struct bte_pcb {scalar_t__ err; int cbarg; int (* conn_cfm ) (int ,struct bte_pcb*,scalar_t__) ;scalar_t__ state; struct l2cap_pcb* ctl_pcb; struct l2cap_pcb* data_pcb; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_CONN ;
 scalar_t__ ERR_OK ;


 scalar_t__ STATE_CONNECTED ;
 int bte_process_input ;
 int l2cap_close (struct l2cap_pcb*) ;
 int l2cap_disconnect_ind (struct l2cap_pcb*,int ) ;
 int l2cap_disconnected_ind ;
 int l2cap_psm (struct l2cap_pcb*) ;
 int l2cap_recv (struct l2cap_pcb*,int ) ;
 int stub1 (int ,struct bte_pcb*,scalar_t__) ;
 int stub2 (int ,struct bte_pcb*,scalar_t__) ;

err_t l2cap_accepted(void *arg,struct l2cap_pcb *l2cappcb,err_t err)
{
 struct bte_pcb *btepcb = (struct bte_pcb*)arg;


 if(err==ERR_OK) {
  l2cap_recv(l2cappcb,bte_process_input);
  l2cap_disconnect_ind(l2cappcb,l2cap_disconnected_ind);
  switch(l2cap_psm(l2cappcb)) {
   case 129:
    btepcb->ctl_pcb = l2cappcb;
    break;
   case 128:
    btepcb->data_pcb = l2cappcb;
    break;
  }
  if(btepcb->data_pcb && btepcb->ctl_pcb) {
   btepcb->err = ERR_OK;
   btepcb->state = (u32)STATE_CONNECTED;
   if(btepcb->conn_cfm) btepcb->conn_cfm(btepcb->cbarg,btepcb,ERR_OK);
  }
 } else {
  l2cap_close(l2cappcb);
  btepcb->err = ERR_CONN;
  btepcb->conn_cfm(btepcb->cbarg,btepcb,ERR_CONN);
 }

 return ERR_OK;
}
