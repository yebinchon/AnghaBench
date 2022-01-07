
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_1 ;
 scalar_t__ EXI_Lock (int ,int ,int ) ;
 int LWP_ThreadSleep (int ) ;
 int __time_exi_unlock ;
 int time_exi_wait ;

__attribute__((used)) static void __time_exi_wait()
{
 u32 ret;

 do {
  if((ret=EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_1,__time_exi_unlock))==1) break;
  LWP_ThreadSleep(time_exi_wait);
 }while(ret==0);
}
