
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct card_direntry {int block; } ;
struct card_dat {struct card_direntry* entries; } ;
typedef scalar_t__ s32 ;
typedef int * cardcallback ;
struct TYPE_7__ {size_t fileno; } ;
typedef TYPE_1__ card_dir ;
struct TYPE_8__ {int * card_api_cb; int curr_fileblock; } ;
typedef TYPE_2__ card_block ;


 scalar_t__ CARD_ERROR_NOCARD ;
 scalar_t__ EXI_CHANNEL_0 ;
 scalar_t__ EXI_CHANNEL_2 ;
 int * __card_defaultapicallback ;
 scalar_t__ __card_getcntrlblock (scalar_t__,TYPE_2__**) ;
 struct card_dat* __card_getdirblock (TYPE_2__*) ;
 int __card_putcntrlblock (TYPE_2__*,scalar_t__) ;
 scalar_t__ __card_updatedir (scalar_t__,int ) ;
 int __delete_callback ;
 int memset (struct card_direntry*,int,int) ;

s32 CARD_DeleteEntryAsync(s32 chn,card_dir *dir_entry,cardcallback callback)
{
 s32 ret;
 cardcallback cb = ((void*)0);
 card_block *card = ((void*)0);
 struct card_dat *dirblock = ((void*)0);
 struct card_direntry *entry = ((void*)0);
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 if((ret=__card_getcntrlblock(chn,&card))<0) return ret;

 dirblock = __card_getdirblock(card);
 entry = &dirblock->entries[dir_entry->fileno];

 card->curr_fileblock = entry->block;
 memset(entry,-1,sizeof(struct card_direntry));

 cb = callback;
 if(!cb) cb = __card_defaultapicallback;
 card->card_api_cb = cb;

 if((ret=__card_updatedir(chn,__delete_callback))>=0) return ret;

 __card_putcntrlblock(card,ret);
 return ret;
}
