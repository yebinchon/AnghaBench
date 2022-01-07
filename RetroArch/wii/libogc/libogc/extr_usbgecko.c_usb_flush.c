
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int EXI_Unlock (int ) ;
 scalar_t__ __usb_recvbyte (int ,char*) ;
 int __usbgecko_exi_wait (int ) ;

void usb_flush(s32 chn)
{
 char tmp;

 __usbgecko_exi_wait(chn);
 while(__usb_recvbyte(chn,&tmp));
 EXI_Unlock(chn);
}
