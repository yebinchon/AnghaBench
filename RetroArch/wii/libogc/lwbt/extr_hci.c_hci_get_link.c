
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_link {int bdaddr; struct hci_link* next; } ;
struct bd_addr {int dummy; } ;


 scalar_t__ bd_addr_cmp (int *,struct bd_addr*) ;
 struct hci_link* hci_active_links ;

struct hci_link* hci_get_link(struct bd_addr *bdaddr)
{
 struct hci_link *link;

 for(link=hci_active_links;link!=((void*)0);link=link->next) {
  if(bd_addr_cmp(&(link->bdaddr),bdaddr)) break;
 }
 return link;
}
