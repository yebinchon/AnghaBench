
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u32_t ;
struct pbuf {scalar_t__ payload; } ;
struct hci_link_key {int * next; int key; int bdaddr; } ;
struct bd_addr {int dummy; } ;
struct TYPE_2__ {int keyres; } ;


 int ERROR (char*) ;
 int HCI_REG (int *,struct hci_link_key*) ;
 int MEMB_NUM_HCI_LINK_KEY ;
 int bd_addr_set (int *,struct bd_addr*) ;
 struct hci_link_key* btmemb_alloc (int *) ;
 TYPE_1__* hci_dev ;
 int hci_link_key_results ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static void hci_return_link_key_evt(struct pbuf *p)
{
 u8_t num_keys;
 u32_t i,resp_off;
 struct bd_addr *bdaddr;
 struct hci_link_key *keyres;

 num_keys = ((u8_t*)p->payload)[0];

 for(i=0;i<num_keys && i<MEMB_NUM_HCI_LINK_KEY;i++) {
  resp_off = (i*22);
  bdaddr = (void*)(((u8_t*)p->payload)+1+resp_off);
  if((keyres=btmemb_alloc(&hci_link_key_results))!=((void*)0)) {
   bd_addr_set(&(keyres->bdaddr),bdaddr);
   memcpy(keyres->key,((u8_t*)p->payload)+7+resp_off,16);
   keyres->next = ((void*)0);


   HCI_REG(&(hci_dev->keyres),keyres);
  } else
   ERROR("hci_return_link_key_evt: Could not allocate memory for link key result\n");
 }

}
