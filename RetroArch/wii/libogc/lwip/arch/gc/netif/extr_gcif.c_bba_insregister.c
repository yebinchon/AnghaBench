
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int req ;


 int EXI_CHANNEL_0 ;
 int EXI_Imm (int ,int*,int,int ,int *) ;
 int EXI_Sync (int ) ;
 int EXI_WRITE ;

__attribute__((used)) static __inline__ void bba_insregister(u32 reg)
{
 u32 req;
 req = (reg<<8)|0x80000000;
 EXI_Imm(EXI_CHANNEL_0,&req,sizeof(req),EXI_WRITE,((void*)0));
 EXI_Sync(EXI_CHANNEL_0);
}
