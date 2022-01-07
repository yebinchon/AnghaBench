
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_1 ;
 scalar_t__ EXI_Deselect (int ) ;
 scalar_t__ EXI_Imm (int ,int*,int,int ,int *) ;
 scalar_t__ EXI_ImmEx (int ,void*,int,int ) ;
 scalar_t__ EXI_Lock (int ,int ,int ) ;
 int EXI_SPEED8MHZ ;
 scalar_t__ EXI_Select (int ,int ,int ) ;
 scalar_t__ EXI_Sync (int ) ;
 scalar_t__ EXI_Unlock (int ) ;
 int EXI_WRITE ;
 int __sram_writecallback ;

__attribute__((used)) static u32 __sram_write(void *buffer,u32 loc,u32 len)
{
 u32 cmd,ret;

 if(EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_1,__sram_writecallback)==0) return 0;
 if(EXI_Select(EXI_CHANNEL_0,EXI_DEVICE_1,EXI_SPEED8MHZ)==0) {
  EXI_Unlock(EXI_CHANNEL_0);
  return 0;
 }

 ret = 0;
 cmd = 0xa0000100+(loc<<6);
 if(EXI_Imm(EXI_CHANNEL_0,&cmd,4,EXI_WRITE,((void*)0))==0) ret |= 0x01;
 if(EXI_Sync(EXI_CHANNEL_0)==0) ret |= 0x02;
 if(EXI_ImmEx(EXI_CHANNEL_0,buffer,len,EXI_WRITE)==0) ret |= 0x04;
 if(EXI_Deselect(EXI_CHANNEL_0)==0) ret |= 0x08;
 if(EXI_Unlock(EXI_CHANNEL_0)==0) ret |= 0x10;

 if(ret) return 0;
 return 1;
}
