
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
typedef int s32 ;


 int EXI_DEVICE_0 ;
 scalar_t__ EXI_GetID (int,int ,scalar_t__*) ;
 int EXI_Unlock (int) ;
 int __send_command (int,int*) ;
 int __usbgecko_exi_wait (int) ;

int usb_isgeckoalive(s32 chn)
{
 u32 id = 0;
 s32 ret;
 u16 val;

 if (EXI_GetID(chn, EXI_DEVICE_0, &id) == 0)
  return 0;

 if (id != 0)
  return 0;

 __usbgecko_exi_wait(chn);

 val = 0x9000;
 ret = __send_command(chn,&val);
 if(ret==1 && !(val&0x0470)) ret = 0;

 EXI_Unlock(chn);

 return ret;
}
