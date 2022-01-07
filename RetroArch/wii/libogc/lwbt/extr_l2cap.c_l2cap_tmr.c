
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l2cap_sig {scalar_t__ rtx; scalar_t__ nrtx; scalar_t__ ertx; struct l2cap_sig* next; } ;
struct TYPE_2__ {int outflushto; scalar_t__ cfgto; int l2capcfg; } ;
struct l2cap_pcb {scalar_t__ state; TYPE_1__ cfg; struct l2cap_sig* unrsp_sigs; struct l2cap_pcb* next; } ;
typedef int err_t ;


 int ERR_OK ;
 int L2CAP_CFG_IR ;
 scalar_t__ L2CAP_CFG_TO ;
 void* L2CAP_CLOSED ;
 scalar_t__ L2CAP_CONFIG ;
 int L2CAP_CONN_CFG_TO ;
 scalar_t__ L2CAP_RTX ;
 int L2CA_ACTION_CONN_CFM (struct l2cap_pcb*,int ,int,int ) ;
 int L2CA_ACTION_CONN_IND (struct l2cap_pcb*,int ,int ) ;
 int L2CA_ACTION_DISCONN_IND (struct l2cap_pcb*,int ,int ) ;
 int L2CA_ACTION_TO_IND (struct l2cap_pcb*,int ,int ) ;
 int LOG (char*) ;
 int l2ca_disconnect_req (struct l2cap_pcb*,int *) ;
 struct l2cap_pcb* l2cap_active_pcbs ;
 int l2cap_rexmit_signal (struct l2cap_pcb*,struct l2cap_sig*) ;

void l2cap_tmr()
{
 struct l2cap_sig *sig;
 struct l2cap_pcb *pcb;
 err_t ret;

 (void) ret;


 for(pcb = l2cap_active_pcbs; pcb != ((void*)0); pcb = pcb->next) {

  for(sig = pcb->unrsp_sigs; sig != ((void*)0); sig = sig->next) {

   if(pcb->cfg.outflushto < 0xFFFF) {

    if(sig->rtx > 0) {

     --sig->rtx;

     if(sig->rtx == 0) {
      if(sig->nrtx == 0) {

       pcb->state = L2CAP_CLOSED;

       LOG("l2cap_tmr: Max number of retransmissions (rtx) has expired\n");
       L2CA_ACTION_DISCONN_IND(pcb,ERR_OK,ret);
      } else {
       --sig->nrtx;

       L2CA_ACTION_TO_IND(pcb,ERR_OK,ret);

       sig->rtx += sig->rtx;
       ret = l2cap_rexmit_signal(pcb, sig);
      }
     }
    } else {

     --sig->ertx;

     if(sig->ertx == 0) {
      if(sig->nrtx == 0) {

       pcb->state = L2CAP_CLOSED;

       LOG("l2cap_tmr: Max number of retransmissions (ertx) has expired\n");
       L2CA_ACTION_DISCONN_IND(pcb,ERR_OK,ret);
      } else {
       --sig->nrtx;

       L2CA_ACTION_TO_IND(pcb,ERR_OK,ret);

       sig->ertx = 0;
       sig->rtx = L2CAP_RTX;
       ret = l2cap_rexmit_signal(pcb, sig);
      }
     }
    }
   }
  }


  if(pcb->state == L2CAP_CONFIG) {

   if(pcb->cfg.cfgto > 0) {
    --pcb->cfg.cfgto;


    if(pcb->cfg.cfgto == 0) {

     l2ca_disconnect_req(pcb, ((void*)0));

     if(pcb->cfg.l2capcfg & L2CAP_CFG_IR) {
      L2CA_ACTION_CONN_CFM(pcb, L2CAP_CONN_CFG_TO, 0x0000, ret);
     } else {
      L2CA_ACTION_CONN_IND(pcb, ERR_OK, ret);
     }
     pcb->cfg.cfgto = L2CAP_CFG_TO;
    }
   }
  }
 }
}
