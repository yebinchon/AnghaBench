
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_2 ;
 scalar_t__ EXI_Lock (int ,int ,int *) ;
 int EXI_Unlock (int ) ;
 int __linkstate () ;

__attribute__((used)) static u32 __bba_getlink_state_async()
{
 u32 ret;

 if(EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_2,((void*)0))==0) return 0;
 ret = __linkstate();
 EXI_Unlock(EXI_CHANNEL_0);
 return ret;
}
