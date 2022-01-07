
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct pbuf {scalar_t__ payload; } ;
struct TYPE_2__ {int flow; } ;




 int HCI_SUCCESS ;
 TYPE_1__* hci_dev ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static void hci_cc_host_ctrl(u8_t ocf,struct pbuf *p)
{
 u8_t *lap;
 u8_t i,resp_off;


 switch(ocf) {
  case 128:
   if(((u8_t*)p->payload)[0]==HCI_SUCCESS) hci_dev->flow = 1;
   break;
  case 129:
   if(((u8_t*)p->payload)[0]==HCI_SUCCESS) {
    for(i=0;i<((u8_t*)p->payload)[1];i++) {
     resp_off = (i*3);
     lap = (void*)(((u8_t*)p->payload)+(2+resp_off));
     printf("lap = 00%02x%02x%02x\n",lap[2],lap[1],lap[0]);
    }
   }
   break;
 }
}
