
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int EXI_Unlock (scalar_t__) ;
 scalar_t__ __usb_checkrecv (scalar_t__) ;
 scalar_t__ __usb_recvbyte (scalar_t__,char*) ;
 int __usbgecko_exi_wait (scalar_t__) ;

int usb_recvbuffer_safe_ex(s32 chn,void *buffer,int size, int retries)
{
 s32 ret;
 s32 left = size;
 char *ptr = (char*)buffer;

 __usbgecko_exi_wait(chn);
 while(left>0) {
  if(__usb_checkrecv(chn)) {
   ret = __usb_recvbyte(chn,ptr);
   if(ret==0) break;

   ptr++;
   left--;
  }

  if (retries >= 0) {
   retries--;
   if (retries == 0)
    break;
  }
 }
 EXI_Unlock(chn);

 return (size - left);
}
