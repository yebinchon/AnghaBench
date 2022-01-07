
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;


 scalar_t__ EXI_Attach (scalar_t__,int *) ;
 scalar_t__ EXI_CHANNEL_2 ;
 scalar_t__ EXI_DEVICE_0 ;
 scalar_t__ EXI_Deselect (scalar_t__) ;
 int EXI_Detach (scalar_t__) ;
 scalar_t__ EXI_Imm (scalar_t__,scalar_t__*,int,int ,int *) ;
 int EXI_Lock (scalar_t__,scalar_t__,int *) ;
 int EXI_READ ;
 int EXI_SPEED1MHZ ;
 int EXI_Select (scalar_t__,scalar_t__,int ) ;
 scalar_t__ EXI_Sync (scalar_t__) ;
 int EXI_Unlock (scalar_t__) ;
 int EXI_WRITE ;

__attribute__((used)) static s32 __probebarnacle(s32 chn,u32 dev,u32 *rev)
{
 u32 ret,reg;

 if(chn!=EXI_CHANNEL_2 && dev==EXI_DEVICE_0) {
  if(EXI_Attach(chn,((void*)0))==0) return 0;
 }

 ret = 0;
 if(EXI_Lock(chn,dev,((void*)0))==1) {
  if(EXI_Select(chn,dev,EXI_SPEED1MHZ)==1) {
   reg = 0x20011300;
   if(EXI_Imm(chn,&reg,sizeof(u32),EXI_WRITE,((void*)0))==0) ret |= 0x0001;
   if(EXI_Sync(chn)==0) ret |= 0x0002;
   if(EXI_Imm(chn,rev,sizeof(u32),EXI_READ,((void*)0))==0) ret |= 0x0004;
   if(EXI_Sync(chn)==0) ret |= 0x0008;
   if(EXI_Deselect(chn)==0) ret |= 0x0010;

  }
  EXI_Unlock(chn);
 }

 if(chn!=EXI_CHANNEL_2 && dev==EXI_DEVICE_0) EXI_Detach(chn);

 if(ret) return 0;
 if((*rev+0x00010000)==0xffff) return 0;

 return 1;
}
