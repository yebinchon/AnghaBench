
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
struct bd_addr {int dummy; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_ACCEPT_CONN_REQ_OCF ;
 int HCI_ACCEPT_CONN_REQ_PLEN ;
 int HCI_LINK_CTRL_OGF ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 int memcpy (void*,struct bd_addr*,int) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_accecpt_conn_request(struct bd_addr *bdaddr,u8_t role)
{
 struct pbuf *p = ((void*)0);

 if((p=btpbuf_alloc(PBUF_RAW,HCI_ACCEPT_CONN_REQ_PLEN,PBUF_RAM))==((void*)0)) {
  ERROR("hci_exit_periodic_inquiry: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }


 p = hci_cmd_ass(p,HCI_ACCEPT_CONN_REQ_OCF,HCI_LINK_CTRL_OGF,HCI_ACCEPT_CONN_REQ_PLEN);


 memcpy((void*)(((u8_t*)p->payload)+4),bdaddr,6);
 ((u8_t*)p->payload)[10] = role;

 physbusif_output(p,p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
