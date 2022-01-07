
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;
struct pbuf {scalar_t__ payload; } ;
struct hci_link {int bdaddr; int connhdl; struct hci_link* next; } ;
typedef int err_t ;


 int HCI_EVENT_WLP_COMPLETE (int ,int *,int ) ;
 int HCI_SUCCESS ;

 int LOG (char*) ;
 struct hci_link* hci_active_links ;
 int hci_dev ;
 int le16toh (int ) ;

__attribute__((used)) static void hci_cc_link_policy(u8_t ocf,struct pbuf *p)
{
 err_t ret;
 struct hci_link *link;

 (void)ret;

 switch(ocf) {
  case 128:
   if(((u8_t*)p->payload)[0]==HCI_SUCCESS) {
    for(link=hci_active_links;link!=((void*)0);link=link->next) {
     if(link->connhdl==le16toh(*((u16_t*)(((u8_t*)p->payload)+1)))) break;
    }
    if(link==((void*)0)) {
     LOG("hci_cc_link_policy: Connection does not exist\n");
     break;
    }
    HCI_EVENT_WLP_COMPLETE(hci_dev,&link->bdaddr,ret);
   } else {
    LOG("Unsuccessful HCI_W_LINK_POLICY.\n");
   }
   break;
 }
}
