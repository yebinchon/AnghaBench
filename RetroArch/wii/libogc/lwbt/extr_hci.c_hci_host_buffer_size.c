
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
typedef int err_t ;
struct TYPE_2__ {int host_num_acl; } ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_HC_BB_OGF ;
 int HCI_HOST_ACL_MAX_LEN ;
 int HCI_HOST_MAX_NUM_ACL ;
 int HCI_H_BUF_SIZE_OCF ;
 int HCI_H_BUF_SIZE_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 TYPE_1__* hci_dev ;
 int htole16 (int) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_host_buffer_size(void)
{
 struct pbuf *p;
 if((p = btpbuf_alloc(PBUF_RAW, HCI_H_BUF_SIZE_PLEN, PBUF_RAM)) == ((void*)0)) {
  ERROR("hci_host_buffer_size: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 p = hci_cmd_ass(p, HCI_H_BUF_SIZE_OCF, HCI_HC_BB_OGF, HCI_H_BUF_SIZE_PLEN);
 ((u16_t *)p->payload)[2] = htole16(HCI_HOST_ACL_MAX_LEN);
 ((u8_t *)p->payload)[6] = 255;
 *((u16_t *)(((u8_t *)p->payload)+7)) = htole16(HCI_HOST_MAX_NUM_ACL);
 ((u16_t *)p->payload)[4] = htole16(1);
 physbusif_output(p, p->tot_len);
 btpbuf_free(p);

 hci_dev->host_num_acl = HCI_HOST_MAX_NUM_ACL;

 return ERR_OK;
}
