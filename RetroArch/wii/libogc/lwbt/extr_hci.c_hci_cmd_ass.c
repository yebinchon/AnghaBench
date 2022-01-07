
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct pbuf {scalar_t__ payload; } ;
struct TYPE_2__ {scalar_t__ num_cmd; } ;


 int HCI_CMD_HDR_LEN ;
 int HCI_COMMAND_DATA_PACKET ;
 TYPE_1__* hci_dev ;

struct pbuf* hci_cmd_ass(struct pbuf *p,u8_t ocf,u8_t ogf,u8_t len)
{
 ((u8_t*)p->payload)[0] = HCI_COMMAND_DATA_PACKET;
 ((u8_t*)p->payload)[1] = (ocf&0xff);
 ((u8_t*)p->payload)[2] = ((ocf>>8)|(ogf<<2));
 ((u8_t*)p->payload)[3] = len-HCI_CMD_HDR_LEN-1;

 if(hci_dev->num_cmd>0) hci_dev->num_cmd--;
 return p;
}
