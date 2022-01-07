
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct card_bat {size_t* fat; int freeblocks; } ;
typedef size_t s32 ;
typedef int cardcallback ;
struct TYPE_4__ {size_t blocks; int attached; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_BROKEN ;
 size_t CARD_ERROR_NOCARD ;
 size_t CARD_SYSAREA ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 struct card_bat* __card_getbatblock (TYPE_1__*) ;
 size_t __card_updatefat (size_t,struct card_bat*,int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_freeblock(s32 chn,u16 block,cardcallback callback)
{
 u16 next = 0xffff,prev = 0xffff;
 card_block *card = ((void*)0);
 struct card_bat *fatblock = ((void*)0);
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 card = &cardmap[chn];

 if(!card->attached) return CARD_ERROR_NOCARD;

 fatblock = __card_getbatblock(card);
 next = fatblock->fat[block-CARD_SYSAREA];
 while(1) {
  if(next==0xffff) break;
  if(next<CARD_SYSAREA || next>=card->blocks) return CARD_ERROR_BROKEN;


  prev = next;
  next = fatblock->fat[prev-CARD_SYSAREA];
  fatblock->fat[prev-CARD_SYSAREA] = 0;
  fatblock->freeblocks++;
 }
 return __card_updatefat(chn,fatblock,callback);
}
