
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;


 int EXI_Unlock (int) ;
 scalar_t__ __flashreadcommand (int,int,int*) ;
 scalar_t__ __flashsoftwareid_entry (int) ;
 scalar_t__ __flashsoftwareid_exit (int) ;
 int __usbgecko_exi_wait (int) ;

int usb_flashverify(s32 chn)
{
 u8 id[2];
 s32 ret=0;

 __usbgecko_exi_wait(chn);

 if (__flashsoftwareid_entry(chn) &&__flashreadcommand(chn, 0, id+0) &&
     __flashreadcommand(chn, 1, id+1) && id[0] == 0xBF && id[1] == 0xD7 &&
     __flashsoftwareid_exit(chn))
  ret = 1;

 EXI_Unlock(chn);

 return ret;
}
