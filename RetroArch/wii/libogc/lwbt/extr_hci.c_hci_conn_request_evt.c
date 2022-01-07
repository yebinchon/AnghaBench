
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct pbuf {scalar_t__ payload; } ;
struct hci_link {int bdaddr; } ;
struct bd_addr {int dummy; } ;
typedef scalar_t__ err_t ;


 int ERROR (char*) ;
 scalar_t__ ERR_OK ;
 int HCI_EVENT_CONN_REQ (int ,struct bd_addr*,int *,int ,scalar_t__) ;
 int HCI_REG (int *,struct hci_link*) ;
 int LOG (char*) ;
 int bd_addr_set (int *,struct bd_addr*) ;
 int hci_accecpt_conn_request (struct bd_addr*,int) ;
 int hci_active_links ;
 int hci_dev ;
 struct hci_link* hci_get_link (struct bd_addr*) ;
 struct hci_link* hci_new () ;

__attribute__((used)) static void hci_conn_request_evt(struct pbuf *p)
{
 u8_t *cod;
 u8_t link_type;
 err_t ret = ERR_OK;
 struct bd_addr *bdaddr;
 struct hci_link *link;

 LOG("hci_conn_request_evt()\n");
 bdaddr = (void*)((u8_t*)p->payload);
 cod = (((u8_t*)p->payload)+6);
 link_type = *(((u8_t*)p->payload)+9);

 HCI_EVENT_CONN_REQ(hci_dev,bdaddr,cod,link_type,ret);
 if(ret==ERR_OK) {
  link = hci_get_link(bdaddr);
  if(link==((void*)0)) {
   if((link=hci_new())==((void*)0)) {
    ERROR("hci_conn_request_evt: Could not allocate memory for link. Disconnect\n");
    return;
   }

   bd_addr_set(&(link->bdaddr),bdaddr);
   HCI_REG(&(hci_active_links),link);
  }
  hci_accecpt_conn_request(bdaddr,0x00);
 } else {
 }
}
