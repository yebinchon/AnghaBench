
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
typedef int err_t ;
struct TYPE_2__ {int host_num_acl; } ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_HC_BB_OGF ;
 int HCI_H_NUM_COMPL_OCF ;
 int HCI_H_NUM_COMPL_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,int ,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,int ) ;
 TYPE_1__* hci_dev ;
 scalar_t__ htole16 (scalar_t__) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_host_num_comp_packets(u16_t conhdl, u16_t num_complete)
{
 struct pbuf *p;

 if((p = btpbuf_alloc(PBUF_RAW, HCI_H_NUM_COMPL_PLEN, PBUF_RAM)) == ((void*)0)) {
  ERROR("hci_host_num_comp_packets: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 p = hci_cmd_ass(p, HCI_H_NUM_COMPL_OCF, HCI_HC_BB_OGF, HCI_H_NUM_COMPL_PLEN);
 ((u8_t*)p->payload)[4] = 1;
 *(u16_t*)(p->payload+5) = htole16(conhdl);
 *(u16_t*)(p->payload+7) = htole16(num_complete);

 physbusif_output(p, p->tot_len);
 btpbuf_free(p);

 hci_dev->host_num_acl += num_complete;

 return ERR_OK;
}
