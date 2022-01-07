
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct pbuf {scalar_t__ payload; } ;
struct l2cap_pcb {int state; int remote_bdaddr; int scid; int psm; int encrypt; struct l2cap_pcb* next; } ;
struct bd_addr {int dummy; } ;
typedef scalar_t__ err_t ;


 int ERROR (char*) ;
 scalar_t__ ERR_OK ;
 int L2CAP_CONN_REF_RES ;
 int L2CAP_CONN_REQ ;
 int L2CAP_CONN_REQ_SIZE ;
 int L2CA_ACTION_CONN_CFM (struct l2cap_pcb*,int ,int,scalar_t__) ;
 int LOG (char*) ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 int W4_L2CAP_CONNECT_RSP ;
 scalar_t__ bd_addr_cmp (int *,struct bd_addr*) ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int htole16 (int ) ;
 struct l2cap_pcb* l2cap_active_pcbs ;
 scalar_t__ l2cap_signal (struct l2cap_pcb*,int ,int ,int *,struct pbuf*) ;

void lp_connect_cfm(struct bd_addr *bdaddr, u8_t encrypt_mode, err_t err)
{
 struct l2cap_pcb *pcb;
 struct pbuf *data;
 err_t ret;

 for(pcb = l2cap_active_pcbs; pcb != ((void*)0); pcb = pcb->next) {
  if(bd_addr_cmp(&(pcb->remote_bdaddr), bdaddr)) {
   break;
  }
 }
 if(pcb == ((void*)0)) {

  LOG("lp_connect_cfm: Silently discard\n");
 } else {
  if(err == ERR_OK) {
   pcb->encrypt = encrypt_mode;

   if((data = btpbuf_alloc(PBUF_RAW, L2CAP_CONN_REQ_SIZE, PBUF_RAM)) != ((void*)0)) {
    ((u16_t *)data->payload)[0] = htole16(pcb->psm);
    ((u16_t *)data->payload)[1] = htole16(pcb->scid);
    if((ret = l2cap_signal(pcb, L2CAP_CONN_REQ, 0, &(pcb->remote_bdaddr), data)) == ERR_OK) {
     pcb->state = W4_L2CAP_CONNECT_RSP;
    } else {
     L2CA_ACTION_CONN_CFM(pcb,L2CAP_CONN_REF_RES,0x0000,ret);
    }

   } else {
    ERROR("lp_connect_cfm: No resources available\n");
    L2CA_ACTION_CONN_CFM(pcb,L2CAP_CONN_REF_RES,0x0000,ret);
   }
  } else {
   ERROR("lp_connect_cfm: Connection falied\n");
   L2CA_ACTION_CONN_CFM(pcb,L2CAP_CONN_REF_RES,0x0000,ret);
  }
 }
}
