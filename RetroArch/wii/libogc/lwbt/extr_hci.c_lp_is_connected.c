
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct hci_link {int dummy; } ;
struct bd_addr {int dummy; } ;


 struct hci_link* hci_get_link (struct bd_addr*) ;

u8_t lp_is_connected(struct bd_addr *bdaddr)
{
 struct hci_link *link;

 link = hci_get_link(bdaddr);

 if(link == ((void*)0)) {
  return 0;
 }
 return 1;
}
