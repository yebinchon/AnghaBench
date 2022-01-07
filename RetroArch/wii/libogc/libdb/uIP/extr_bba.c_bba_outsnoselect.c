
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int req ;


 int EXI_CHANNEL_0 ;
 int EXI_Imm (int ,int*,int,int ,int *) ;
 int EXI_ImmEx (int ,void*,int,int ) ;
 int EXI_Sync (int ) ;
 int EXI_WRITE ;

__attribute__((used)) static inline void bba_outsnoselect(u32 reg,void *val,u32 len)
{
 u32 req;
 req = (reg<<8)|0xC0000000;
 EXI_Imm(EXI_CHANNEL_0,&req,sizeof(req),EXI_WRITE,((void*)0));
 EXI_Sync(EXI_CHANNEL_0);
 EXI_ImmEx(EXI_CHANNEL_0,val,len,EXI_WRITE);
}
