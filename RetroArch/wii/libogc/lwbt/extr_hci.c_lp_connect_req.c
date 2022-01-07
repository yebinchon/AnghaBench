
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
struct hci_link {int bdaddr; } ;
struct hci_inq_res {int psrm; int psm; int co; int bdaddr; struct hci_inq_res* next; } ;
struct bd_addr {int addr; } ;
typedef int err_t ;
struct TYPE_2__ {int pkt_type; struct hci_inq_res* ires; } ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_CREATE_CONN_OCF ;
 int HCI_CREATE_CONN_PLEN ;
 int HCI_LINK_CTRL_OGF ;
 int HCI_REG (int *,struct hci_link*) ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 scalar_t__ bd_addr_cmp (int *,struct bd_addr*) ;
 int bd_addr_set (int *,struct bd_addr*) ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 int hci_active_links ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 TYPE_1__* hci_dev ;
 struct hci_link* hci_new () ;
 int htole16 (int) ;
 int memcpy (int*,int ,int) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t lp_connect_req(struct bd_addr *bdaddr, u8_t allow_role_switch)
{
 u8_t page_scan_repetition_mode, page_scan_mode;
 u16_t clock_offset;
 struct pbuf *p;
 struct hci_link *link = hci_new();
 struct hci_inq_res *inqres;

 if(link == ((void*)0)) {
  ERROR("lp_connect_req: Could not allocate memory for link\n");
  return ERR_MEM;
 }

 bd_addr_set(&(link->bdaddr), bdaddr);
 HCI_REG(&(hci_active_links), link);


 for(inqres = hci_dev->ires; inqres != ((void*)0); inqres = inqres->next) {
  if(bd_addr_cmp(&inqres->bdaddr, bdaddr)) {
   page_scan_repetition_mode = inqres->psrm;
   page_scan_mode = inqres->psm;
   clock_offset = inqres->co;
   break;
  }
 }
 if(inqres == ((void*)0)) {

  page_scan_repetition_mode = 0x01;


  page_scan_mode = 0x00;


  clock_offset = 0x00;

 }

 if((p = btpbuf_alloc(PBUF_RAW, HCI_CREATE_CONN_PLEN, PBUF_RAM)) == ((void*)0)) {
  ERROR("lp_connect_req: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }


 p = hci_cmd_ass(p, HCI_CREATE_CONN_OCF, HCI_LINK_CTRL_OGF, HCI_CREATE_CONN_PLEN);

 memcpy(((u8_t *)p->payload)+4, bdaddr->addr, 6);
 ((u16_t *)p->payload)[5] = htole16(hci_dev->pkt_type);
 ((u8_t *)p->payload)[12] = page_scan_repetition_mode;
 ((u8_t *)p->payload)[13] = page_scan_mode;
 ((u16_t *)p->payload)[7] = htole16(clock_offset);
 ((u8_t *)p->payload)[16] = allow_role_switch;

 physbusif_output(p, p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
