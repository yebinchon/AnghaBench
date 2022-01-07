
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t s32 ;
struct TYPE_3__ {size_t result; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_NOCARD ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 TYPE_1__* cardmap ;

s32 CARD_GetErrorCode(s32 chn)
{
 card_block *card = ((void*)0);

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 card = &cardmap[chn];
 return card->result;
}
