
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct l2cap_pcb_listen {int callback_arg; int state; int (* l2ca_connect_ind ) (void*,struct l2cap_pcb*,int ) ;int psm; int bdaddr; } ;
struct l2cap_pcb {int callback_arg; } ;
struct bd_addr {int dummy; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int L2CAP_LISTEN ;
 int L2CAP_REG (int *,struct l2cap_pcb_listen*) ;
 int bd_addr_set (int *,struct bd_addr*) ;
 struct l2cap_pcb_listen* btmemb_alloc (int *) ;
 int btmemb_free (int *,struct l2cap_pcb*) ;
 int l2cap_listen_pcbs ;
 int l2cap_listenpcbs ;
 int l2cap_pcbs ;

err_t l2cap_connect_ind(struct l2cap_pcb *npcb, struct bd_addr *bdaddr, u16_t psm,err_t (* l2ca_connect_ind)(void *arg, struct l2cap_pcb *pcb, err_t err))
{
 struct l2cap_pcb_listen *lpcb;

 lpcb = btmemb_alloc(&l2cap_listenpcbs);
 if(lpcb == ((void*)0)) {
  ERROR("l2cap_connect_ind: Could not allocate memory for lpcb\n");
  return ERR_MEM;
 }

 bd_addr_set(&(lpcb->bdaddr),bdaddr);
 lpcb->psm = psm;
 lpcb->l2ca_connect_ind = l2ca_connect_ind;
 lpcb->state = L2CAP_LISTEN;
 lpcb->callback_arg = npcb->callback_arg;
 btmemb_free(&l2cap_pcbs, npcb);
 L2CAP_REG(&(l2cap_listen_pcbs), lpcb);
 return ERR_OK;
}
