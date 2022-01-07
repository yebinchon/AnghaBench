
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int EXI_DEVICE_0 ;
 int EXI_Lock (int ,int ,int *) ;
 int EXI_Unlock (int ) ;
 scalar_t__ __usb_recvbyte (int ,char*) ;

__attribute__((used)) static void __usb_flush(s32 chn)
{
 char tmp;

 if(!EXI_Lock(chn,EXI_DEVICE_0,((void*)0))) return;

 while(__usb_recvbyte(chn,&tmp));

 EXI_Unlock(chn);
}
