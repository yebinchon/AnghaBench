
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct l2cap_pcb {int dummy; } ;
struct bte_pcb {int cbarg; int (* disconn_cfm ) (int ,struct bte_pcb*,int ) ;void* state; int err; int * ctl_pcb; int * data_pcb; } ;
typedef int err_t ;


 int ERR_OK ;


 scalar_t__ STATE_DISCONNECTED ;
 scalar_t__ STATE_DISCONNECTING ;
 int __bte_close_ctrl_queue (struct bte_pcb*) ;
 int l2cap_close (int *) ;
 int l2cap_psm (struct l2cap_pcb*) ;
 int stub1 (int ,struct bte_pcb*,int ) ;

err_t l2cap_disconnected_ind(void *arg, struct l2cap_pcb *pcb, err_t err)
{
 struct bte_pcb *bte = (struct bte_pcb*)arg;

 if(bte==((void*)0)) return ERR_OK;

 bte->state = (u32)STATE_DISCONNECTING;
 switch(l2cap_psm(pcb)) {
  case 129:
   l2cap_close(bte->ctl_pcb);
   bte->ctl_pcb = ((void*)0);
   break;
  case 128:
   l2cap_close(bte->data_pcb);
   bte->data_pcb = ((void*)0);
   break;
 }
 if(bte->data_pcb==((void*)0) && bte->ctl_pcb==((void*)0)) {
  bte->err = ERR_OK;
  bte->state = (u32)STATE_DISCONNECTED;
  __bte_close_ctrl_queue(bte);
  if(bte->disconn_cfm!=((void*)0)) bte->disconn_cfm(bte->cbarg,bte,ERR_OK);
 }
 return ERR_OK;
}
