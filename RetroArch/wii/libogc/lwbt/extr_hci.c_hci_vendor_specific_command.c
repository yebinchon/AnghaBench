
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 scalar_t__ HCI_W_VENDOR_CMD_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,scalar_t__,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,scalar_t__,scalar_t__,scalar_t__) ;
 int memcpy (scalar_t__*,void*,scalar_t__) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_vendor_specific_command(u8_t ocf,u8_t ogf,void *data,u8_t len)
{
 struct pbuf *p = ((void*)0);

 if((p=btpbuf_alloc(PBUF_RAW,HCI_W_VENDOR_CMD_PLEN + len,PBUF_RAM))==((void*)0)) {
  ERROR("hci_vendor_specific_patch: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }


 p = hci_cmd_ass(p,ocf,ogf,HCI_W_VENDOR_CMD_PLEN + len);

 memcpy(((u8_t*)p->payload + 4),data,len);

 physbusif_output(p, p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
