
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef size_t s32 ;


 int EXI_DEVICE_0 ;
 scalar_t__ EXI_Lock (size_t,int ,int ) ;
 int LWP_ThreadSleep (int ) ;
 int __exi_unlock ;
 int * _ioEXILock ;

__attribute__((used)) static void __exi_wait(s32 drv_no)
{
 u32 ret;

 do {
  if((ret=EXI_Lock(drv_no,EXI_DEVICE_0,__exi_unlock))==1) break;
  LWP_ThreadSleep(_ioEXILock[drv_no]);
 } while(ret==0);
}
