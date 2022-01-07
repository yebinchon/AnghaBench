
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct card_dircntrl {int chksum2; int chksum1; int updated; } ;
typedef size_t s32 ;
typedef int cardcallback ;
struct TYPE_4__ {int sector_size; scalar_t__ workarea; int card_erase_cb; int attached; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_FATAL_ERROR ;
 size_t CARD_ERROR_NOCARD ;
 int DCStoreRange (void*,int) ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int __card_checksum (int *,int,int *,int *) ;
 int __card_direrasecallback ;
 void* __card_getdirblock (TYPE_1__*) ;
 size_t __card_sectorerase (size_t,int,int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_updatedir(s32 chn,cardcallback callback)
{
 card_block *card = ((void*)0);
 void *dirblock = ((void*)0);
 struct card_dircntrl *dircntrl = ((void*)0);
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_FATAL_ERROR;
 card = &cardmap[chn];

 if(!card->attached) return CARD_ERROR_NOCARD;

 dirblock = __card_getdirblock(card);
 dircntrl = dirblock+8128;
 ++dircntrl->updated;
 __card_checksum((u16*)dirblock,0x1ffc,&dircntrl->chksum1,&dircntrl->chksum2);
 DCStoreRange(dirblock,0x2000);
 card->card_erase_cb = callback;

 return __card_sectorerase(chn,(((u32)dirblock-(u32)card->workarea)>>13)*card->sector_size,__card_direrasecallback);
}
