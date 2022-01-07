
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;


 int EXI_Unlock (int) ;
 int __flashreadcommand (int,int ,int ) ;
 int __usbgecko_exi_wait (int) ;

int usb_flashread(s32 chn, u32 offset, void *buffer, size_t length)
{
 s32 ret=1;
 u8 *data = (u8*)buffer;

 __usbgecko_exi_wait(chn);
 while (ret && length--)
  ret = __flashreadcommand(chn, offset++, data++);

 EXI_Unlock(chn);

 return ret;
}
