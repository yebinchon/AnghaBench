
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
struct hci_link_key {struct hci_link_key* next; } ;
typedef int err_t ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ bdaddr; struct hci_link_key* keyres; } ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_HC_BB_OGF ;
 int HCI_R_STORED_LINK_KEY_OCF ;
 int HCI_R_STORED_LINK_KEY_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 int btmemb_free (int *,struct hci_link_key*) ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 TYPE_2__* hci_dev ;
 int hci_link_key_results ;
 int memcpy (void*,int ,int) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_read_stored_link_key()
{
 struct pbuf *p = ((void*)0);
 struct hci_link_key *tmpres;


 while(hci_dev->keyres != ((void*)0)) {
  tmpres = hci_dev->keyres;
  hci_dev->keyres = hci_dev->keyres->next;
  btmemb_free(&hci_link_key_results,tmpres);
 }

 if((p=btpbuf_alloc(PBUF_RAW,HCI_R_STORED_LINK_KEY_PLEN,PBUF_RAM))==((void*)0)) {
  ERROR("hci_read_stored_link_keys: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 p = hci_cmd_ass(p,HCI_R_STORED_LINK_KEY_OCF,HCI_HC_BB_OGF,HCI_R_STORED_LINK_KEY_PLEN);

 memcpy((void*)((u8_t*)p->payload + 4),hci_dev->bdaddr.addr,6);
 ((u8_t*)p->payload)[10] = 1;

 physbusif_output(p,p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
