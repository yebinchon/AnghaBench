
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct card_bat {int chksum2; int chksum1; int updated; } ;
typedef size_t s32 ;
typedef int cardcallback ;
struct TYPE_3__ {int sector_size; scalar_t__ workarea; int card_erase_cb; int attached; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_FATAL_ERROR ;
 size_t CARD_ERROR_NOCARD ;
 int DCStoreRange (struct card_bat*,int) ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int __card_checksum (int *,int,int *,int *) ;
 int __card_faterasecallback ;
 size_t __card_sectorerase (size_t,int,int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_updatefat(s32 chn,struct card_bat *fatblock,cardcallback callback)
{
 card_block *card = ((void*)0);
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_FATAL_ERROR;
 card = &cardmap[chn];

 if(!card->attached) return CARD_ERROR_NOCARD;

 ++fatblock->updated;
 __card_checksum((u16*)(((u32)fatblock)+4),0x1ffc,&fatblock->chksum1,&fatblock->chksum2);
 DCStoreRange(fatblock,8192);
 card->card_erase_cb = callback;

 return __card_sectorerase(chn,(((u32)fatblock-(u32)card->workarea)>>13)*card->sector_size,__card_faterasecallback);
}
