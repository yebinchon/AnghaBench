
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pbuf {scalar_t__ tot_len; struct l2cap_hdr* payload; } ;
struct TYPE_2__ {scalar_t__ outmtu; } ;
struct l2cap_pcb {scalar_t__ state; scalar_t__ dcid; int remote_bdaddr; TYPE_1__ cfg; } ;
struct l2cap_hdr {void* len; void* cid; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_BUF ;
 int ERR_CONN ;
 int ERR_MEM ;
 int ERR_OK ;
 scalar_t__ L2CAP_HDR_LEN ;
 scalar_t__ L2CAP_OPEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,scalar_t__,int ) ;
 int btpbuf_chain (struct pbuf*,struct pbuf*) ;
 struct pbuf* btpbuf_dechain (struct pbuf*) ;
 int btpbuf_free (struct pbuf*) ;
 void* htole16 (scalar_t__) ;
 int l2cap_write (int *,struct pbuf*,scalar_t__) ;

err_t l2ca_datawrite(struct l2cap_pcb *pcb, struct pbuf *p)
{
 err_t ret;
 struct l2cap_hdr *l2caphdr;
 struct pbuf *q;

 if(pcb->state != L2CAP_OPEN) {
  ERROR("l2cap_datawrite: State != L2CAP_OPEN. Dropping data\n");
  return ERR_CONN;
 }


 if((q = btpbuf_alloc(PBUF_RAW, L2CAP_HDR_LEN, PBUF_RAM)) == ((void*)0)) {
  ERROR("l2cap_datawrite: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }
 btpbuf_chain(q, p);

 l2caphdr = q->payload;
 l2caphdr->cid = htole16(pcb->dcid);


 if(p->tot_len > pcb->cfg.outmtu) {

  l2caphdr->len = htole16(pcb->cfg.outmtu);
  if((ret = l2cap_write(&(pcb->remote_bdaddr), q, pcb->cfg.outmtu + L2CAP_HDR_LEN)) == ERR_OK) {

   ret = ERR_BUF;
  }
 } else {

  l2caphdr->len = htole16(p->tot_len);

  ret = l2cap_write(&(pcb->remote_bdaddr), q, q->tot_len);
 }


 p = btpbuf_dechain(q);
 btpbuf_free(q);

 return ret;
}
