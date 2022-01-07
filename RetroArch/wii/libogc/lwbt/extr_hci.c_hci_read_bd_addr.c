
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int tot_len; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_INFO_PARAM_OGF ;
 int HCI_R_BD_ADDR_OCF ;
 int HCI_R_BD_ADDR_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_read_bd_addr(void)
{
 struct pbuf *p = ((void*)0);

 if((p=btpbuf_alloc(PBUF_RAW,HCI_R_BD_ADDR_PLEN,PBUF_RAM))==((void*)0)) {
  ERROR("hci_read_bd_addr: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 p = hci_cmd_ass(p,HCI_R_BD_ADDR_OCF,HCI_INFO_PARAM_OGF,HCI_R_BD_ADDR_PLEN);

 physbusif_output(p,p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
