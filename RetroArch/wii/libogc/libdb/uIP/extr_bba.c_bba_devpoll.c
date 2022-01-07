
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef void* s64 ;
typedef int response ;
typedef int challange ;
struct TYPE_2__ {int acstart; } ;


 int BBA_CMD_IRMASKALL ;
 int BBA_CMD_IRMASKNONE ;
 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_2 ;
 int EXI_Lock (int ,int ,int *) ;
 int EXI_Unlock (int ) ;
 scalar_t__ UIP_ARP_TMRINTERVAL ;
 int UIP_LOG (char*) ;
 int __bba_init (int ) ;
 void* bba_arp_tmr ;
 int bba_calc_response (int ,int ) ;
 int bba_cmd_in8 (int) ;
 int bba_cmd_ins (int,int *,int) ;
 int bba_cmd_out8 (int,int) ;
 int bba_cmd_outs (int,int *,int) ;
 TYPE_1__ bba_device ;
 int bba_interrupt (int*) ;
 int bba_netif ;
 scalar_t__ diff_msec (void*,void*) ;
 void* gettime () ;
 int uip_arp_timer () ;

__attribute__((used)) static void bba_devpoll(u16 *pstatus)
{
 u8 status;
 s64 now;

 UIP_LOG("bba_devpoll()\n");

 now = gettime();
 if(diff_msec(bba_arp_tmr,now)>=UIP_ARP_TMRINTERVAL) {
  uip_arp_timer();
  bba_arp_tmr = gettime();
 }

 status = 0;
 *pstatus = 0;
 if(EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_2,((void*)0))==1) {
  status = bba_cmd_in8(0x03);
  if(status) {
   bba_cmd_out8(0x02,BBA_CMD_IRMASKALL);
   if(status&0x80) {
    *pstatus |= (status<<8);
    bba_interrupt(pstatus);
    bba_cmd_out8(0x03,0x80);
    bba_cmd_out8(0x02,BBA_CMD_IRMASKNONE);
    EXI_Unlock(EXI_CHANNEL_0);
    return;
   }
   if(status&0x40) {
    *pstatus |= (status<<8);
    __bba_init(bba_netif);
    bba_cmd_out8(0x03, 0x40);
    bba_cmd_out8(0x02,BBA_CMD_IRMASKNONE);
    EXI_Unlock(EXI_CHANNEL_0);
    return;
   }
   if(status&0x20) {
    *pstatus |= (status<<8);
    bba_cmd_out8(0x03, 0x20);
    bba_cmd_out8(0x02,BBA_CMD_IRMASKNONE);
    EXI_Unlock(EXI_CHANNEL_0);
    return;
   }
   if(status&0x10) {
    u32 response,challange;

    *pstatus |= (status<<8);
    bba_cmd_out8(0x05,bba_device.acstart);
    bba_cmd_ins(0x08,&challange,sizeof(challange));
    response = bba_calc_response(bba_netif,challange);
    bba_cmd_outs(0x09,&response,sizeof(response));
    bba_cmd_out8(0x03, 0x10);
    bba_cmd_out8(0x02,BBA_CMD_IRMASKNONE);
    EXI_Unlock(EXI_CHANNEL_0);
    return;
   }
   if(status&0x08) {
    *pstatus |= (status<<8);
    bba_cmd_out8(0x03, 0x08);
    bba_cmd_out8(0x02,BBA_CMD_IRMASKNONE);
    EXI_Unlock(EXI_CHANNEL_0);
    return;
   }

   *pstatus |= (status<<8);
   bba_interrupt(pstatus);
   bba_cmd_out8(0x02,BBA_CMD_IRMASKNONE);
  }
  EXI_Unlock(EXI_CHANNEL_0);
 }
}
