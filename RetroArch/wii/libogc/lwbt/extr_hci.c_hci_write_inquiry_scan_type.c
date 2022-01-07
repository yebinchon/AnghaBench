
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_HC_BB_OGF ;
 int HCI_W_INQUIRY_SCAN_TYPE_OCF ;
 int HCI_W_INQUIRY_SCAN_TYPE_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_write_inquiry_scan_type(u8_t type)
{
 struct pbuf *p = ((void*)0);

 if((p=btpbuf_alloc(PBUF_RAW,HCI_W_INQUIRY_SCAN_TYPE_PLEN,PBUF_RAM))==((void*)0)) {
  ERROR("hci_write_inquiry_mode: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }


 p = hci_cmd_ass(p,HCI_W_INQUIRY_SCAN_TYPE_OCF,HCI_HC_BB_OGF,HCI_W_INQUIRY_SCAN_TYPE_PLEN);

 ((u8_t*)p->payload)[4] = type;

 physbusif_output(p, p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
