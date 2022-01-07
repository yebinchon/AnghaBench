
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct card_bat {int dummy; } ;
typedef size_t s32 ;
typedef int (* cardcallback ) (size_t,size_t) ;
struct TYPE_4__ {int (* card_erase_cb ) (size_t,size_t) ;int card_api_cb; struct card_bat* curr_fat; struct card_bat* workarea; } ;
typedef TYPE_1__ card_block ;


 int __card_putcntrlblock (TYPE_1__*,size_t) ;
 TYPE_1__* cardmap ;
 int memcpy (struct card_bat*,struct card_bat*,int) ;

__attribute__((used)) static void __card_fatwritecallback(s32 chn,s32 result)
{
 s32 ret;
 cardcallback cb = ((void*)0);
 struct card_bat *fat1,*fat2;
 card_block *card = &cardmap[chn];
 ret = result;
 if(ret>=0) {
  fat1 = (card->workarea+0x6000);
  fat2 = (card->workarea+0x8000);
  if(card->curr_fat==fat1) {
   card->curr_fat = fat2;
   memcpy(fat2,fat1,8192);
  } else {
   card->curr_fat = fat1;
   memcpy(fat1,fat2,8192);
  }
 }
 if(!card->card_api_cb) __card_putcntrlblock(card,ret);
 cb = card->card_erase_cb;
 if(cb) {
  card->card_erase_cb = ((void*)0);
  cb(chn,ret);
 }
}
