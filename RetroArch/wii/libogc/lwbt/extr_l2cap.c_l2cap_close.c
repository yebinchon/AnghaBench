
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_sig {scalar_t__ state; struct l2cap_sig* next; struct l2cap_sig* unrsp_sigs; } ;
struct l2cap_pcb {scalar_t__ state; struct l2cap_pcb* next; struct l2cap_pcb* unrsp_sigs; } ;
typedef int err_t ;


 int ERR_OK ;
 scalar_t__ L2CAP_LISTEN ;
 int L2CAP_RMV (struct l2cap_sig**,struct l2cap_sig*) ;
 int btmemb_free (int *,struct l2cap_sig*) ;
 struct l2cap_sig* l2cap_active_pcbs ;
 int l2cap_listen_pcbs ;
 int l2cap_listenpcbs ;
 int l2cap_pcbs ;
 int l2cap_sigs ;

err_t l2cap_close(struct l2cap_pcb *pcb)
{
 struct l2cap_sig *tmpsig;

 if(pcb->state == L2CAP_LISTEN) {
  L2CAP_RMV((struct l2cap_pcb**)((void*)&(l2cap_listen_pcbs)), pcb);
  btmemb_free(&l2cap_listenpcbs, pcb);
 } else {
  L2CAP_RMV(&(l2cap_active_pcbs), pcb);

  while(pcb->unrsp_sigs != ((void*)0)) {
   tmpsig = pcb->unrsp_sigs;
   pcb->unrsp_sigs = pcb->unrsp_sigs->next;
   btmemb_free(&l2cap_sigs, tmpsig);
  }

  btmemb_free(&l2cap_pcbs, pcb);
 }
 pcb = ((void*)0);
 return ERR_OK;
}
