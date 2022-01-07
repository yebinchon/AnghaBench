
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t s32 ;
typedef int (* cardcallback ) (size_t,size_t) ;
struct TYPE_3__ {int (* card_unlock_cb ) (size_t,size_t) ;} ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_NOCARD ;
 size_t CARD_ERROR_READY ;
 size_t CARD_ERROR_UNLOCKED ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 scalar_t__ EXI_Probe (size_t) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_unlockedhandler(s32 chn,s32 dev)
{
 s32 ret;
 cardcallback cb = ((void*)0);
 card_block *card = ((void*)0);

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 card = &cardmap[chn];

 ret = CARD_ERROR_READY;
 cb = card->card_unlock_cb;
 if(cb) {
  card->card_unlock_cb = ((void*)0);
  if(EXI_Probe(chn)==0) ret = CARD_ERROR_NOCARD;
  cb(chn,ret);
 }
 return CARD_ERROR_UNLOCKED;
}
