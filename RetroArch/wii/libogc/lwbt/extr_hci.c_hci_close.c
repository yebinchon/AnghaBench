
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_link {int * p; } ;
typedef int err_t ;


 int ERR_OK ;
 int HCI_RMV (int *,struct hci_link*) ;
 int btmemb_free (int *,struct hci_link*) ;
 int btpbuf_free (int *) ;
 int hci_active_links ;
 int hci_links ;

err_t hci_close(struct hci_link *link)
{
 if(link->p != ((void*)0)) {
  btpbuf_free(link->p);
 }

 HCI_RMV(&(hci_active_links), link);
 btmemb_free(&hci_links, link);
 link = ((void*)0);
 return ERR_OK;
}
