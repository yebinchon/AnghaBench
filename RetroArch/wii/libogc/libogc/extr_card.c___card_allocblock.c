
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct card_bat {scalar_t__ freeblocks; size_t lastalloc; size_t* fat; } ;
typedef size_t s32 ;
typedef int cardcallback ;
struct TYPE_4__ {size_t curr_fileblock; scalar_t__ blocks; int attached; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_BROKEN ;
 size_t CARD_ERROR_FATAL_ERROR ;
 size_t CARD_ERROR_INSSPACE ;
 size_t CARD_ERROR_NOCARD ;
 size_t CARD_SYSAREA ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 struct card_bat* __card_getbatblock (TYPE_1__*) ;
 size_t __card_updatefat (size_t,struct card_bat*,int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_allocblock(s32 chn,u32 blocksneed,cardcallback callback)
{
 s32 ret;
 u16 block,currblock = 0,prevblock = 0;
 u32 i,count;
 card_block *card = ((void*)0);
 struct card_bat *fatblock = ((void*)0);
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_FATAL_ERROR;
 card = &cardmap[chn];

 if(!card->attached) return CARD_ERROR_NOCARD;
 fatblock = __card_getbatblock(card);

 if(fatblock->freeblocks<blocksneed) return CARD_ERROR_INSSPACE;


 count = 0;
 block = 0xffff;
 currblock = fatblock->lastalloc;
 i = blocksneed;
 while(1) {
  if(i==0) {

   fatblock->freeblocks -= blocksneed;
   fatblock->lastalloc = currblock;
   card->curr_fileblock = block;
   ret = __card_updatefat(chn,fatblock,callback);
   break;
  }






  count++;
  if(count>=(card->blocks-CARD_SYSAREA)) return CARD_ERROR_BROKEN;

  currblock++;
     if(currblock<CARD_SYSAREA || currblock>=card->blocks) currblock = CARD_SYSAREA;
  if(fatblock->fat[currblock-CARD_SYSAREA]==0) {
   if(block!=0xffff)
    fatblock->fat[prevblock-CARD_SYSAREA] = currblock;
   else
    block = currblock;

   fatblock->fat[currblock-CARD_SYSAREA] = 0xffff;
   prevblock = currblock;
   i--;
  }
 }
 return ret;
}
