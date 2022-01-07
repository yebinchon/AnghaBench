
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16_t ;
struct pbuf {struct hci_acl_hdr* payload; } ;
struct hci_link {int connhdl; int bdaddr; struct hci_link* next; } ;
struct hci_acl_hdr {int len; int connhdl_pb_bc; } ;
struct TYPE_2__ {scalar_t__ host_num_acl; scalar_t__ flow; } ;


 int HCI_ACL_HDR_LEN ;
 scalar_t__ HCI_HOST_MAX_NUM_ACL ;
 int btpbuf_free (struct pbuf*) ;
 int btpbuf_header (struct pbuf*,int ) ;
 struct hci_link* hci_active_links ;
 TYPE_1__* hci_dev ;
 int hci_host_num_comp_packets (int,scalar_t__) ;
 int l2cap_input (struct pbuf*,int *) ;
 int le16toh (int ) ;

void hci_acldata_handler(struct pbuf *p)
{
 struct hci_acl_hdr *aclhdr;
 struct hci_link *link;
 u16_t conhdl;

 aclhdr = p->payload;
 btpbuf_header(p, -HCI_ACL_HDR_LEN);

 conhdl = le16toh(aclhdr->connhdl_pb_bc) & 0x0FFF;

 if(hci_dev->flow) {



  --hci_dev->host_num_acl;
  if(hci_dev->host_num_acl == 0) {
   hci_host_num_comp_packets(conhdl, HCI_HOST_MAX_NUM_ACL);
   hci_dev->host_num_acl = HCI_HOST_MAX_NUM_ACL;
  }
 }

 for(link = hci_active_links; link != ((void*)0); link = link->next) {
  if(link->connhdl == conhdl) {
   break;
  }
 }

 if(link != ((void*)0)) {
  if(le16toh(aclhdr->len)) {

   l2cap_input(p, &(link->bdaddr));
  } else {
   btpbuf_free(p);
  }
 } else {
  btpbuf_free(p);
 }
}
