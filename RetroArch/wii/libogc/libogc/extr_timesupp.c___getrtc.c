
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EXI_CHANNEL_0 ;
 int EXI_DEVICE_1 ;
 scalar_t__ EXI_Deselect (int ) ;
 scalar_t__ EXI_Imm (int ,int*,int,int ,int *) ;
 int EXI_READ ;
 int EXI_SPEED8MHZ ;
 scalar_t__ EXI_Select (int ,int ,int ) ;
 scalar_t__ EXI_Sync (int ) ;
 int EXI_WRITE ;

__attribute__((used)) static u32 __getrtc(u32 *gctime)
{
 u32 ret;
 u32 cmd;
 u32 time;

 if(EXI_Select(EXI_CHANNEL_0,EXI_DEVICE_1,EXI_SPEED8MHZ)==0) {
  return 0;
 }

 ret = 0;
 time = 0;
 cmd = 0x20000000;
 if(EXI_Imm(EXI_CHANNEL_0,&cmd,4,EXI_WRITE,((void*)0))==0) ret |= 0x01;
 if(EXI_Sync(EXI_CHANNEL_0)==0) ret |= 0x02;
 if(EXI_Imm(EXI_CHANNEL_0,&time,4,EXI_READ,((void*)0))==0) ret |= 0x04;
 if(EXI_Sync(EXI_CHANNEL_0)==0) ret |= 0x08;
 if(EXI_Deselect(EXI_CHANNEL_0)==0) ret |= 0x10;

 *gctime = time;
 if(ret) return 0;

 return 1;
}
