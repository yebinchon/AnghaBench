
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {int blocks; } ;
typedef TYPE_1__ card_block ;


 scalar_t__ CARD_ERROR_NOCARD ;
 int CARD_ERROR_READY ;
 scalar_t__ EXI_CHANNEL_0 ;
 scalar_t__ EXI_CHANNEL_2 ;
 scalar_t__ __card_getcntrlblock (scalar_t__,TYPE_1__**) ;
 scalar_t__ __card_putcntrlblock (TYPE_1__*,int ) ;

s32 CARD_GetBlockCount(s32 chn,u32 *block_count)
{
 s32 ret;
 card_block *card = ((void*)0);

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 if((ret=__card_getcntrlblock(chn,&card))<0) return ret;

 *block_count = card->blocks;
 ret = __card_putcntrlblock(card,CARD_ERROR_READY);

 return ret;
}
