
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ s32 ;


 scalar_t__ CARD_ERROR_NOCARD ;
 scalar_t__ CARD_ERROR_READY ;
 scalar_t__ EXI_CHANNEL_0 ;
 scalar_t__ EXI_CHANNEL_2 ;
 int EXI_DEVICE_0 ;
 scalar_t__ EXI_Deselect (scalar_t__) ;
 scalar_t__ EXI_Imm (scalar_t__,int*,int,int ,int *) ;
 int EXI_READ ;
 int EXI_SPEED16MHZ ;
 scalar_t__ EXI_Select (scalar_t__,int ,int ) ;
 scalar_t__ EXI_Sync (scalar_t__) ;
 int EXI_WRITE ;

__attribute__((used)) static s32 __card_readstatus(s32 chn,u8 *pstatus)
{
 u8 val[2];
 u32 err;
 s32 ret;

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 if(EXI_Select(chn,EXI_DEVICE_0,EXI_SPEED16MHZ)==0) return CARD_ERROR_NOCARD;

 err = 0;
 val[0] = 0x83; val[1] = 0x00;
 if(EXI_Imm(chn,val,2,EXI_WRITE,((void*)0))==0) err |= 0x01;
 if(EXI_Sync(chn)==0) err |= 0x02;
 if(EXI_Imm(chn,pstatus,1,EXI_READ,((void*)0))==0) err |= 0x04;
 if(EXI_Sync(chn)==0) err |= 0x08;
 if(EXI_Deselect(chn)==0) err |= 0x10;

 if(err) ret = CARD_ERROR_NOCARD;
 else ret = CARD_ERROR_READY;
 return ret;
}
