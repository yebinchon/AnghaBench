
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_link_key {struct hci_link_key* next; struct hci_link_key* keyres; struct hci_link_key* ires; } ;
struct hci_link {struct hci_link* next; } ;
struct hci_inq_res {struct hci_inq_res* next; struct hci_inq_res* keyres; struct hci_inq_res* ires; } ;


 int btmemb_free (int *,struct hci_link_key*) ;
 struct hci_link* hci_active_links ;
 int hci_close (struct hci_link*) ;
 struct hci_link_key* hci_dev ;
 int hci_init () ;
 int hci_inq_results ;
 int hci_pcbs ;

void hci_reset_all(void)
{
 struct hci_link *link,*tlink;
 struct hci_inq_res *ires,*tires;
 struct hci_link_key *ikeys,*tikeys;

 for(link=hci_active_links;link!=((void*)0);) {
  tlink = link->next;
  hci_close(link);
  link = tlink;
 }
 hci_active_links = ((void*)0);

 for(ires=hci_dev->ires;ires!=((void*)0);) {
  tires = ires->next;
  btmemb_free(&hci_inq_results,ires);
  ires = tires;
 }

 for(ikeys=hci_dev->keyres;ikeys!=((void*)0);) {
  tikeys = ikeys->next;
  btmemb_free(&hci_inq_results,ikeys);
  ikeys = tikeys;
 }
 btmemb_free(&hci_pcbs,hci_dev);

 hci_init();
}
