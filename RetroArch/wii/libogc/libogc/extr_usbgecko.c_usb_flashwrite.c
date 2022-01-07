
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int s32 ;


 int EXI_Unlock (int) ;
 int __flashreadcommand (int,int ,scalar_t__*) ;
 int __flashwritecommand (int,int,scalar_t__ const) ;
 int __usbgecko_exi_wait (int) ;
 int usleep (int) ;

int usb_flashwrite(s32 chn, u32 offset, const void *buffer, size_t length)
{
 s32 ret=1;
 const u8 *data = (const u8*)buffer;
 u8 verify;

 __usbgecko_exi_wait(chn);
 while (ret && length--)
 {
  if (!__flashwritecommand(chn, 0x5555, 0xAA) || !__flashwritecommand(chn, 0x2AAA, 0x55) ||
      !__flashwritecommand(chn, 0x5555, 0xA0) || !__flashwritecommand(chn, offset, *data))
   ret = 0;
  else
  {
   usleep(20);
   if (!__flashreadcommand(chn, offset++, &verify) || verify != *data++)
    ret = 0;
  }
 }
 EXI_Unlock(chn);

 return ret;
}
