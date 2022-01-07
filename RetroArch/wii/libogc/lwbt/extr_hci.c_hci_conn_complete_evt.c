
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct pbuf {scalar_t__ payload; } ;
struct bd_addr {int * addr; } ;
struct hci_link {struct bd_addr bdaddr; void* connhdl; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_CONN ;
 int ERR_OK ;
 int HCI_CONN_TERMINATED_BY_LOCAL_HOST ;
 int HCI_EVENT_CONN_COMPLETE (int ,struct bd_addr*,int ) ;
 int HCI_OTHER_END_TERMINATED_CONN_LOW_RESOURCES ;

 int HCI_REG (int *,struct hci_link*) ;

 int LOG (char*,struct hci_link*,int ,int ,int ,int ,int ,int ,int ) ;
 int bd_addr_set (struct bd_addr*,struct bd_addr*) ;
 int hci_active_links ;
 int hci_close (struct hci_link*) ;
 int hci_dev ;
 int hci_disconnect (struct bd_addr*,int ) ;
 struct hci_link* hci_get_link (struct bd_addr*) ;
 struct hci_link* hci_new () ;
 void* le16toh (int ) ;
 int lp_connect_cfm (struct bd_addr*,int ,int ) ;
 int lp_connect_ind (struct bd_addr*) ;
 int lp_disconnect_ind (struct bd_addr*,int ) ;

__attribute__((used)) static void hci_conn_complete_evt(struct pbuf *p)
{
 err_t ret;
 struct bd_addr *bdaddr;
 struct hci_link *link;

 (void)ret;

 bdaddr = (void*)(((u8_t*)p->payload)+3);
 link = hci_get_link(bdaddr);
 LOG("hci_conn_complete_evt(%p,%02x - %02x:%02x:%02x:%02x:%02x:%02x)\n",link,((u8_t*)p->payload)[0],bdaddr->addr[0],bdaddr->addr[1],bdaddr->addr[2],bdaddr->addr[3],bdaddr->addr[4],bdaddr->addr[5]);
 switch(((u8_t*)p->payload)[0]) {
  case 128:
   if(link==((void*)0)) {
    if((link=hci_new())==((void*)0)) {
     ERROR("hci_conn_complete_evt: Could not allocate memory for link. Disconnect\n");
     hci_disconnect(bdaddr, HCI_OTHER_END_TERMINATED_CONN_LOW_RESOURCES);
     lp_disconnect_ind(bdaddr,HCI_CONN_TERMINATED_BY_LOCAL_HOST);
     break;
    }
    bd_addr_set(&(link->bdaddr),bdaddr);
    link->connhdl = le16toh(*((u16_t*)(((u8_t*)p->payload)+1)));
    HCI_REG(&(hci_active_links),link);
    HCI_EVENT_CONN_COMPLETE(hci_dev,bdaddr,ret);
    lp_connect_ind(&(link->bdaddr));
   } else {
    link->connhdl = le16toh(*((u16_t*)(((u8_t*)p->payload)+1)));
    HCI_EVENT_CONN_COMPLETE(hci_dev,bdaddr,ret);
    lp_connect_cfm(&(link->bdaddr),((u8_t*)p->payload)[10],ERR_OK);
   }
   break;
  case 129:
   break;
  default:
   if(link!=((void*)0)) {
    hci_close(link);
    lp_connect_cfm(bdaddr,((u8_t*)p->payload)[10],ERR_CONN);
   }
   break;
 }
}
