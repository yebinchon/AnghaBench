
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_4__ {scalar_t__ result; int * card_api_cb; int attached; } ;
typedef TYPE_1__ card_block ;


 scalar_t__ CARD_ERROR_BUSY ;
 size_t CARD_ERROR_FATAL_ERROR ;
 size_t CARD_ERROR_NOCARD ;
 size_t CARD_ERROR_READY ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_getcntrlblock(s32 chn,card_block **card)
{
 s32 ret;
 u32 level;
 card_block *rcard = ((void*)0);

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_FATAL_ERROR;

 _CPU_ISR_Disable(level);
 rcard = &cardmap[chn];
 if(!rcard->attached) {
  _CPU_ISR_Restore(level);
  return CARD_ERROR_NOCARD;
 }

 ret = CARD_ERROR_BUSY;
 if(rcard->result!=CARD_ERROR_BUSY) {
  rcard->result = CARD_ERROR_BUSY;
  rcard->card_api_cb = ((void*)0);
  *card = rcard;
  ret = CARD_ERROR_READY;
 }
 _CPU_ISR_Restore(level);
 return ret;
}
