
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int EXI_Unlock (scalar_t__) ;
 scalar_t__ __usb_sendbyte (scalar_t__,char) ;
 int __usbgecko_exi_wait (scalar_t__) ;

int usb_sendbuffer_ex(s32 chn,const void *buffer,int size, int retries)
{
 s32 ret;
 s32 left = size;
 char *ptr = (char*)buffer;

 __usbgecko_exi_wait(chn);
 while(left>0) {
  ret = __usb_sendbyte(chn,*ptr);
  if(ret==0) break;

  ptr++;
  left--;

  if (retries >= 0) {
   retries--;
   if (retries == 0)
    break;
  }
 }
 EXI_Unlock(chn);

 return (size - left);
}
