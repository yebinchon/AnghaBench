
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct pbuf {scalar_t__ payload; } ;
struct l2cap_pcb {scalar_t__ state; scalar_t__ (* l2ca_disconnect_cfm ) (void*,struct l2cap_pcb*) ;int remote_bdaddr; int scid; int dcid; } ;
typedef scalar_t__ err_t ;


 int ERROR (char*) ;
 scalar_t__ ERR_CONN ;
 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 scalar_t__ L2CAP_CONFIG ;
 int L2CAP_DISCONN_REQ ;
 int L2CAP_DISCONN_REQ_SIZE ;
 scalar_t__ L2CAP_OPEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 scalar_t__ W4_L2CAP_DISCONNECT_RSP ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int htole16 (int ) ;
 scalar_t__ l2cap_signal (struct l2cap_pcb*,int ,int ,int *,struct pbuf*) ;

err_t l2ca_disconnect_req(struct l2cap_pcb *pcb, err_t (* l2ca_disconnect_cfm)(void *arg, struct l2cap_pcb *pcb))
{
 struct pbuf *data;
 err_t ret;

 if(pcb->state == L2CAP_OPEN || pcb->state == L2CAP_CONFIG) {
  if((data = btpbuf_alloc(PBUF_RAW, L2CAP_DISCONN_REQ_SIZE, PBUF_RAM)) == ((void*)0)) {
   ERROR("l2cap_disconnect_req: Could not allocate memory for pbuf\n");
   return ERR_MEM;
  }
  pcb->l2ca_disconnect_cfm = l2ca_disconnect_cfm;

  ((u16_t *)data->payload)[0] = htole16(pcb->dcid);
  ((u16_t *)data->payload)[1] = htole16(pcb->scid);

  ret = l2cap_signal(pcb, L2CAP_DISCONN_REQ, 0, &(pcb->remote_bdaddr), data);

  if(ret == ERR_OK) {
   pcb->state = W4_L2CAP_DISCONNECT_RSP;
  }
 } else {
  return ERR_CONN;
 }

 return ret;
}
