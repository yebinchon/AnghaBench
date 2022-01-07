
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
struct hci_inq_res {int psrm; int psm; int co; int bdaddr; struct hci_inq_res* next; } ;
struct bd_addr {int addr; } ;
typedef int err_t ;
struct TYPE_2__ {struct hci_inq_res* ires; } ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_LINK_CTRL_OGF ;
 int HCI_R_REMOTE_NAME_OCF ;
 int HCI_R_REMOTE_NAME_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 scalar_t__ bd_addr_cmp (int *,struct bd_addr*) ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 TYPE_1__* hci_dev ;
 int htole16 (int) ;
 int memcpy (int*,int ,int) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_read_remote_name(struct bd_addr *bdaddr)
{
 u16_t clock_offset;
 struct pbuf *p = ((void*)0);
 struct hci_inq_res *ires;
 u8_t page_scan_repetition_mode, page_scan_mode;

 for(ires=hci_dev->ires;ires!=((void*)0);ires=ires->next) {
  if(bd_addr_cmp(&(ires->bdaddr),bdaddr)) {
   page_scan_repetition_mode = ires->psrm;
   page_scan_mode = ires->psm;
   clock_offset = ires->co;
   break;
  }
 }

 if(ires==((void*)0)) {
  page_scan_repetition_mode = 0x01;
  page_scan_mode = 0x00;
  clock_offset = 0x00;
 }

 if((p=btpbuf_alloc(PBUF_RAW,HCI_R_REMOTE_NAME_PLEN,PBUF_RAM))==((void*)0)) {
  ERROR("hci_read_remote_name: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }


 p = hci_cmd_ass(p,HCI_R_REMOTE_NAME_OCF,HCI_LINK_CTRL_OGF,HCI_R_REMOTE_NAME_PLEN);

 memcpy(((u8_t *)p->payload+4),bdaddr->addr,6);
 ((u8_t*)p->payload)[10] = page_scan_repetition_mode;
 ((u8_t*)p->payload)[11] = page_scan_mode;
 ((u16_t*)p->payload)[6] = htole16(clock_offset);

 physbusif_output(p, p->tot_len);
 btpbuf_free(p);

 return ERR_OK;

}
