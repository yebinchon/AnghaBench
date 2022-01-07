
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
struct pbuf {scalar_t__ payload; } ;
struct TYPE_2__ {int l2capcfg; } ;
struct l2cap_pcb {int state; int remote_bdaddr; int scid; TYPE_1__ cfg; int (* l2ca_connect_cfm ) (void*,struct l2cap_pcb*,int ,int ) ;int psm; } ;
struct bd_addr {int dummy; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_VAL ;
 int L2CAP_CFG_IR ;
 int L2CAP_CONN_REQ ;
 int L2CAP_CONN_REQ_SIZE ;
 int L2CAP_REG (int *,struct l2cap_pcb*) ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 int W4_L2CAP_CONNECT_RSP ;
 int bd_addr_set (int *,struct bd_addr*) ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int htole16 (int ) ;
 int l2cap_active_pcbs ;
 int l2cap_cid_alloc () ;
 int l2cap_signal (struct l2cap_pcb*,int ,int ,int *,struct pbuf*) ;
 int lp_connect_req (struct bd_addr*,int ) ;
 int lp_is_connected (struct bd_addr*) ;

err_t l2ca_connect_req(struct l2cap_pcb *pcb, struct bd_addr *bdaddr, u16_t psm,
                 u8_t role_switch, err_t (* l2ca_connect_cfm)(void *arg, struct l2cap_pcb *lpcb,
         u16_t result, u16_t status))
{
 err_t ret;
 struct pbuf *data;

 if(bdaddr != ((void*)0)) {
  bd_addr_set(&(pcb->remote_bdaddr),bdaddr);
 } else {
  return ERR_VAL;
 }

 pcb->psm = psm;
 pcb->l2ca_connect_cfm = l2ca_connect_cfm;
 pcb->scid = l2cap_cid_alloc();

 pcb->cfg.l2capcfg |= L2CAP_CFG_IR;

 if(!lp_is_connected(bdaddr)) {
  ret = lp_connect_req(bdaddr, role_switch);
 } else {
  if((data = btpbuf_alloc(PBUF_RAW, L2CAP_CONN_REQ_SIZE, PBUF_RAM)) == ((void*)0)) {
   ERROR("l2cap_connect_req: Could not allocate memory for pbuf\n");
   return ERR_MEM;
  }
  ((u16_t *)data->payload)[0] = htole16(psm);
  ((u16_t *)data->payload)[1] = htole16(pcb->scid);
  ret = l2cap_signal(pcb, L2CAP_CONN_REQ, 0, &(pcb->remote_bdaddr), data);

  pcb->state = W4_L2CAP_CONNECT_RSP;
 }

 L2CAP_REG(&(l2cap_active_pcbs), pcb);

 return ret;
}
