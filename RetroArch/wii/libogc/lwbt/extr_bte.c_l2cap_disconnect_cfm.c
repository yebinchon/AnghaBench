
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct l2cap_pcb {int dummy; } ;
struct bte_pcb {int bdaddr; int cbarg; int (* disconn_cfm ) (int ,struct bte_pcb*,int ) ;scalar_t__ state; int err; int * ctl_pcb; int * data_pcb; } ;
typedef int err_t ;


 int ERR_OK ;
 int HCI_OTHER_END_TERMINATED_CONN_USER_ENDED ;


 scalar_t__ STATE_DISCONNECTED ;
 int __bte_close_ctrl_queue (struct bte_pcb*) ;
 int hci_cmd_complete (int *) ;
 int hci_disconnect (int *,int ) ;
 int l2ca_disconnect_req (int *,int (*) (void*,struct l2cap_pcb*)) ;
 int l2cap_close (int *) ;
 int l2cap_psm (struct l2cap_pcb*) ;
 int stub1 (int ,struct bte_pcb*,int ) ;

err_t l2cap_disconnect_cfm(void *arg, struct l2cap_pcb *pcb)
{
 struct bte_pcb *bte = (struct bte_pcb*)arg;

 if(bte==((void*)0)) return ERR_OK;

 switch(l2cap_psm(pcb)) {
  case 129:
   l2cap_close(bte->ctl_pcb);
   bte->ctl_pcb = ((void*)0);
   if(bte->data_pcb!=((void*)0))
    l2ca_disconnect_req(bte->data_pcb,l2cap_disconnect_cfm);
   break;
  case 128:
   l2cap_close(bte->data_pcb);
   bte->data_pcb = ((void*)0);
   if(bte->ctl_pcb!=((void*)0))
    l2ca_disconnect_req(bte->ctl_pcb,l2cap_disconnect_cfm);
   break;
 }
 if(bte->data_pcb==((void*)0) && bte->ctl_pcb==((void*)0)) {
  bte->err = ERR_OK;
  bte->state = (u32)STATE_DISCONNECTED;
  __bte_close_ctrl_queue(bte);
  if(bte->disconn_cfm!=((void*)0)) bte->disconn_cfm(bte->cbarg,bte,ERR_OK);

  hci_cmd_complete(((void*)0));
  hci_disconnect(&(bte->bdaddr),HCI_OTHER_END_TERMINATED_CONN_USER_ENDED);
 }

 return ERR_OK;
}
