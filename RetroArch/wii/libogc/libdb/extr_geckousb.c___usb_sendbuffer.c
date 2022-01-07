
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int EXI_DEVICE_0 ;
 int EXI_Lock (scalar_t__,int ,int *) ;
 int EXI_Unlock (scalar_t__) ;
 scalar_t__ __usb_checksend (scalar_t__) ;
 scalar_t__ __usb_sendbyte (scalar_t__,char) ;

__attribute__((used)) static int __usb_sendbuffer(s32 chn,const void *buffer,int size)
{
 s32 ret;
 s32 left = size;
 char *ptr = (char*)buffer;

 if(!EXI_Lock(chn,EXI_DEVICE_0,((void*)0))) return 0;

 while(left>0) {
  if(__usb_checksend(chn)) {
   ret = __usb_sendbyte(chn,*ptr);
   if(ret==0) break;

   ptr++;
   left--;
  }
 }

 EXI_Unlock(chn);
 return (size - left);
}
