
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s32 ;


 int EXI_DEVICE_0 ;
 int EXI_Deselect (int) ;
 int EXI_Imm (int,int *,int,int ,int *) ;
 int EXI_READWRITE ;
 int EXI_SPEED32MHZ ;
 int EXI_Select (int,int ,int ) ;
 int EXI_Sync (int) ;

__attribute__((used)) static __inline__ int __send_command(s32 chn,u16 *cmd)
{
 s32 ret = 0;

 if(!EXI_Select(chn,EXI_DEVICE_0,EXI_SPEED32MHZ)) ret |= 0x01;
 if(!EXI_Imm(chn,cmd,sizeof(u16),EXI_READWRITE,((void*)0))) ret |= 0x02;
 if(!EXI_Sync(chn)) ret |= 0x04;
 if(!EXI_Deselect(chn)) ret |= 0x08;

 if(ret) return 0;
 return 1;
}
