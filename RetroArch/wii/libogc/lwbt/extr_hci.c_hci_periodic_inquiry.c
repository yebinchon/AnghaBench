
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
struct hci_inq_res {struct hci_inq_res* next; } ;
typedef int err_t ;
struct TYPE_2__ {int (* inq_complete ) (void*,struct hci_pcb*,struct hci_inq_res*,int ) ;struct hci_inq_res* ires; } ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_LINK_CTRL_OGF ;
 int HCI_PERIODIC_INQUIRY_OCF ;
 int HCI_PERIODIC_INQUIRY_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 int btmemb_free (int *,struct hci_inq_res*) ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 TYPE_1__* hci_dev ;
 int hci_inq_results ;
 int htole16 (int ) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_periodic_inquiry(u32_t lap,u16_t min_period,u16_t max_period,u8_t inq_len,u8_t num_resp,err_t (*inq_complete)(void *arg,struct hci_pcb *pcb,struct hci_inq_res *ires,u16_t result))
{
 struct pbuf *p = ((void*)0);
 struct hci_inq_res *tmpres;


 while(hci_dev->ires != ((void*)0)) {
  tmpres = hci_dev->ires;
  hci_dev->ires = hci_dev->ires->next;
  btmemb_free(&hci_inq_results,tmpres);
 }

 hci_dev->inq_complete = inq_complete;
 if((p=btpbuf_alloc(PBUF_RAW,HCI_PERIODIC_INQUIRY_PLEN,PBUF_RAM))==((void*)0)) {
  ERROR("hci_periodic_inquiry: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }


 p = hci_cmd_ass(p,HCI_PERIODIC_INQUIRY_OCF,HCI_LINK_CTRL_OGF,HCI_PERIODIC_INQUIRY_PLEN);


 ((u16_t*)p->payload)[2] = htole16(max_period);
 ((u16_t*)p->payload)[3] = htole16(min_period);
 ((u8_t*)p->payload)[8] = (lap&0xff);
 ((u8_t*)p->payload)[9] = (lap>>8);
 ((u8_t*)p->payload)[10] = (lap>>16);

 ((u8_t*)p->payload)[11] = inq_len;
 ((u8_t*)p->payload)[12] = num_resp;

 physbusif_output(p,p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
