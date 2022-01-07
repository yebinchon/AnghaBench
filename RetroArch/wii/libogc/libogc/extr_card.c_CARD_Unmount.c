
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;
typedef int card_block ;


 scalar_t__ CARD_ERROR_NOCARD ;
 scalar_t__ CARD_ERROR_READY ;
 scalar_t__ EXI_CHANNEL_0 ;
 scalar_t__ EXI_CHANNEL_2 ;
 int __card_dounmount (scalar_t__,scalar_t__) ;
 scalar_t__ __card_getcntrlblock (scalar_t__,int **) ;

s32 CARD_Unmount(s32 chn)
{
 s32 ret;
 card_block *card = ((void*)0);

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;

 if((ret=__card_getcntrlblock(chn,&card))<0) ret = CARD_ERROR_NOCARD;

 __card_dounmount(chn,ret);
 return CARD_ERROR_READY;
}
