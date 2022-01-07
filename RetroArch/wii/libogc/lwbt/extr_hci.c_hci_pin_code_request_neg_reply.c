
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
struct bd_addr {int addr; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_LINK_CTRL_OGF ;
 int HCI_PIN_CODE_REQ_NEG_REP ;
 int HCI_PIN_CODE_REQ_NEG_REP_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 int memcpy (int *,int ,int) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_pin_code_request_neg_reply(struct bd_addr *bdaddr)
{
 struct pbuf *p;

 if((p=btpbuf_alloc(PBUF_RAW,HCI_PIN_CODE_REQ_NEG_REP_PLEN,PBUF_RAM)) == ((void*)0)) {
  ERROR("hci_pin_code_request_neg_reply: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 p = hci_cmd_ass(p,HCI_PIN_CODE_REQ_NEG_REP,HCI_LINK_CTRL_OGF,HCI_PIN_CODE_REQ_NEG_REP_PLEN);
 memcpy(((u8_t *)p->payload)+4, bdaddr->addr, 6);

 physbusif_output(p,p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
