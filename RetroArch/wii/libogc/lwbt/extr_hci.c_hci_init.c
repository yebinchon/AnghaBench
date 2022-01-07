
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_pcb {int dummy; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int * btmemb_alloc (int *) ;
 int btmemb_init (int *) ;
 int btmemr_init () ;
 int btpbuf_init () ;
 int * hci_active_links ;
 int * hci_dev ;
 int hci_inq_results ;
 int hci_link_key_results ;
 int hci_links ;
 int hci_pcbs ;
 int * hci_tmp_link ;
 int memset (int *,int ,int) ;

err_t hci_init(void)
{
 btmemr_init();
 btpbuf_init();

 btmemb_init(&hci_pcbs);
 btmemb_init(&hci_links);
 btmemb_init(&hci_inq_results);
 btmemb_init(&hci_link_key_results);

 if((hci_dev=btmemb_alloc(&hci_pcbs))==((void*)0)) {
  ERROR("hci_init: Could not allocate memory for hci_dev\n");
  return ERR_MEM;
 }
 memset(hci_dev,0,sizeof(struct hci_pcb));

 hci_active_links = ((void*)0);
 hci_tmp_link = ((void*)0);

 return ERR_OK;
}
