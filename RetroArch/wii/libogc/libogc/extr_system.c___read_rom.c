
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DCInvalidateRange (void*,int) ;
 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_1 ;
 scalar_t__ EXI_Deselect (int ) ;
 scalar_t__ EXI_Dma (int ,void*,int,int ,int *) ;
 scalar_t__ EXI_Imm (int ,int*,int,int ,int *) ;
 scalar_t__ EXI_Lock (int ,int ,int *) ;
 int EXI_READ ;
 int EXI_SPEED8MHZ ;
 scalar_t__ EXI_Select (int ,int ,int ) ;
 scalar_t__ EXI_Sync (int ) ;
 scalar_t__ EXI_Unlock (int ) ;
 int EXI_WRITE ;

__attribute__((used)) static u32 __read_rom(void *buf,u32 len,u32 offset)
{
 u32 ret;
 u32 loff;

 DCInvalidateRange(buf,len);

 if(EXI_Lock(EXI_CHANNEL_0,EXI_DEVICE_1,((void*)0))==0) return 0;
 if(EXI_Select(EXI_CHANNEL_0,EXI_DEVICE_1,EXI_SPEED8MHZ)==0) {
  EXI_Unlock(EXI_CHANNEL_0);
  return 0;
 }

 ret = 0;
 loff = offset<<6;
 if(EXI_Imm(EXI_CHANNEL_0,&loff,4,EXI_WRITE,((void*)0))==0) ret |= 0x0001;
 if(EXI_Sync(EXI_CHANNEL_0)==0) ret |= 0x0002;
 if(EXI_Dma(EXI_CHANNEL_0,buf,len,EXI_READ,((void*)0))==0) ret |= 0x0004;
 if(EXI_Sync(EXI_CHANNEL_0)==0) ret |= 0x0008;
 if(EXI_Deselect(EXI_CHANNEL_0)==0) ret |= 0x0010;
 if(EXI_Unlock(EXI_CHANNEL_0)==0) ret |= 0x00020;

 if(ret) return 0;
 return 1;
}
