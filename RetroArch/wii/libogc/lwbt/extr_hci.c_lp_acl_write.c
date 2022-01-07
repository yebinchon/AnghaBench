
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
struct pbuf {int len; scalar_t__ payload; } ;
struct hci_link {int len; int pb; int connhdl; struct pbuf* p; } ;
struct hci_acl_hdr {void* len; void* connhdl_pb_bc; } ;
struct bd_addr {int dummy; } ;
typedef int err_t ;
struct TYPE_2__ {scalar_t__ acl_max_pkt; } ;


 int ERROR (char*) ;
 int ERR_CONN ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_ACL_DATA_PACKET ;
 scalar_t__ HCI_ACL_HDR_LEN ;
 int LOG (char*,...) ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,scalar_t__,int ) ;
 int btpbuf_chain (struct pbuf*,struct pbuf*) ;
 struct pbuf* btpbuf_dechain (struct pbuf*) ;
 int btpbuf_free (struct pbuf*) ;
 int btpbuf_ref (struct pbuf*) ;
 struct pbuf* btpbuf_take (struct pbuf*) ;
 TYPE_1__* hci_dev ;
 struct hci_link* hci_get_link (struct bd_addr*) ;
 void* htole16 (int) ;
 int physbusif_output (struct pbuf*,int) ;

err_t lp_acl_write(struct bd_addr *bdaddr,struct pbuf *p,u16_t len,u8_t pb)
{
 u16_t connhdlpbbc;
 struct hci_link *link;
 struct hci_acl_hdr *aclhdr;
 struct pbuf *q;

 link = hci_get_link(bdaddr);
 if(link==((void*)0)) {
  ERROR("lp_acl_write: ACL connection does not exist\n");
  return ERR_CONN;
 }

 if(hci_dev->acl_max_pkt==0) {
  if(p != ((void*)0)) {

   if(link->p != ((void*)0)) {
    LOG("lp_acl_write: Host buffer full. Dropped packet\n");
    return ERR_OK;
   } else {

    p = btpbuf_take(p);

    link->p = p;
    link->len = len;
    link->pb = pb;

    btpbuf_ref(p);
    LOG("lp_acl_write: Host queued packet %p\n", (void *)p);
   }
  }
 }

 if((q=btpbuf_alloc(PBUF_RAW,HCI_ACL_HDR_LEN+1,PBUF_RAM))==((void*)0)) {
  ERROR("lp_acl_write: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 btpbuf_chain(q,p);
 ((u8_t*)q->payload)[0] = HCI_ACL_DATA_PACKET;

 aclhdr = (void*)((u8_t*)q->payload+1);

 connhdlpbbc = link->connhdl;
 connhdlpbbc |= (pb<<12);
 connhdlpbbc &= 0x3FFF;
 aclhdr->connhdl_pb_bc = htole16(connhdlpbbc);
 aclhdr->len = htole16(len);

 physbusif_output(q,(q->len+len));
 --hci_dev->acl_max_pkt;

 p = btpbuf_dechain(q);
 btpbuf_free(q);
 return ERR_OK;
}
