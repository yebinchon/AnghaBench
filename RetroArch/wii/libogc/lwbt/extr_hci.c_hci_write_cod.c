
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
 int HCI_W_COD_OCF ;
 int HCI_W_COD_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_write_cod(u8_t *cod)
{
 struct pbuf *p;

 if((p = btpbuf_alloc(PBUF_RAW, HCI_W_COD_PLEN, PBUF_RAM)) == ((void*)0)) {
  ERROR("hci_write_cod: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 p = hci_cmd_ass(p, HCI_W_COD_OCF, HCI_HC_BB_OGF, HCI_W_COD_PLEN);

 memcpy(((u8_t *)p->payload)+4, cod, 3);

 physbusif_output(p, p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
