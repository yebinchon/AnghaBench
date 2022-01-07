
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
struct hci_link {int connhdl; } ;
struct bd_addr {int dummy; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_CONN ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_HC_BB_OGF ;
 int HCI_W_FLUSHTO ;
 int HCI_W_FLUSHTO_PLEN ;
 int PBUF_RAM ;
 int PBUF_TRANSPORT ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 struct hci_link* hci_get_link (struct bd_addr*) ;
 int htole16 (int ) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t lp_write_flush_timeout(struct bd_addr *bdaddr, u16_t flushto)
{
 struct hci_link *link;
 struct pbuf *p;


 link = hci_get_link(bdaddr);

 if(link == ((void*)0)) {
  ERROR("lp_write_flush_timeout: ACL connection does not exist\n");
  return ERR_CONN;
 }

 if((p = btpbuf_alloc(PBUF_TRANSPORT, HCI_W_FLUSHTO_PLEN, PBUF_RAM)) == ((void*)0)) {
  ERROR("lp_write_flush_timeout: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }


 p = hci_cmd_ass(p, HCI_W_FLUSHTO, HCI_HC_BB_OGF, HCI_W_FLUSHTO_PLEN);

 ((u16_t *)p->payload)[2] = htole16(link->connhdl);
 ((u16_t *)p->payload)[3] = htole16(flushto);

 physbusif_output(p, p->tot_len);
 btpbuf_free(p);
 return ERR_OK;
}
