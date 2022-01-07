
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_link {int dummy; } ;


 struct hci_link* btmemb_alloc (int *) ;
 int hci_links ;
 int memset (struct hci_link*,int ,int) ;

struct hci_link* hci_new(void)
{
 struct hci_link *link;

 link = btmemb_alloc(&hci_links);
 if(link==((void*)0)) return ((void*)0);

 memset(link,0,sizeof(struct hci_link));
 return link;
}
