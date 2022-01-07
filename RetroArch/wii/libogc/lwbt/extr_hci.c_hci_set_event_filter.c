
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u32 ;
struct pbuf {int tot_len; scalar_t__ payload; } ;
typedef int err_t ;


 int ERROR (char*) ;
 int ERR_MEM ;
 int ERR_OK ;
 int HCI_HC_BB_OGF ;
 int HCI_SET_EV_FILTER_OCF ;
 scalar_t__ HCI_SET_EV_FILTER_PLEN ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 struct pbuf* btpbuf_alloc (int ,scalar_t__,int ) ;
 int btpbuf_free (struct pbuf*) ;
 struct pbuf* hci_cmd_ass (struct pbuf*,int ,int ,scalar_t__) ;
 int memcpy (scalar_t__,int*,scalar_t__) ;
 int physbusif_output (struct pbuf*,int ) ;

err_t hci_set_event_filter(u8_t filter_type,u8_t filter_cond_type,u8_t *cond)
{
 u32 cond_len = 0;
 struct pbuf *p = ((void*)0);

 switch(filter_type) {
  case 0x00:
   cond_len = 0x00;
   break;
  case 0x01:
   switch(filter_cond_type) {
    case 0x00:
     cond_len = 0x00;
     break;
    case 0x01:
     cond_len = 0x06;
     break;
    case 0x02:
     cond_len = 0x06;
     break;
    default:
     break;
   }
   break;
  case 0x02:
   switch(filter_cond_type) {
    case 0x00:
     cond_len = 0x01;
     break;
    case 0x01:
     cond_len = 0x07;
     break;
    case 0x02:
     cond_len = 0x07;
     break;
    default:
     break;
   }
   break;
  default:
   break;
 }

 if((p=btpbuf_alloc(PBUF_RAW,HCI_SET_EV_FILTER_PLEN+cond_len,PBUF_RAM))==((void*)0)) {
  ERROR("hci_set_event_filter: Could not allocate memory for pbuf\n");
  return ERR_MEM;
 }

 p = hci_cmd_ass(p,HCI_SET_EV_FILTER_OCF,HCI_HC_BB_OGF,HCI_SET_EV_FILTER_PLEN+cond_len);
 ((u8_t*)p->payload)[4] = filter_type;
 ((u8_t*)p->payload)[5] = filter_cond_type;
 if(cond_len>0) memcpy(p->payload+6,cond,cond_len);

 physbusif_output(p,p->tot_len);
 btpbuf_free(p);

 return ERR_OK;
}
