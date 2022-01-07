
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct card_direntry {int lastmodified; } ;
struct card_dat {struct card_direntry* entries; } ;
struct card_bat {size_t* fat; } ;
typedef size_t s32 ;
typedef int (* cardcallback ) (size_t,size_t) ;
struct TYPE_7__ {scalar_t__ len; size_t filenum; int offset; size_t iblock; } ;
typedef TYPE_1__ card_file ;
struct TYPE_8__ {int sector_size; size_t blocks; int (* card_api_cb ) (size_t,size_t) ;TYPE_1__* curr_file; } ;
typedef TYPE_2__ card_block ;


 size_t CARD_ERROR_BROKEN ;
 size_t CARD_ERROR_CANCELED ;
 size_t CARD_SYSAREA ;
 struct card_bat* __card_getbatblock (TYPE_2__*) ;
 struct card_dat* __card_getdirblock (TYPE_2__*) ;
 int __card_putcntrlblock (TYPE_2__*,size_t) ;
 size_t __card_sectorerase (size_t,int,int ) ;
 size_t __card_updatedir (size_t,int (*) (size_t,size_t)) ;
 int __erase_callback ;
 TYPE_2__* cardmap ;
 int time (int *) ;

__attribute__((used)) static void __write_callback(s32 chn,s32 result)
{
 s32 ret;
 cardcallback cb = ((void*)0);
 card_file *file = ((void*)0);
 struct card_bat *fatblock = ((void*)0);
 struct card_dat *dirblock = ((void*)0);
 struct card_direntry *entry = ((void*)0);
 card_block *card = &cardmap[chn];
 ret = result;
 if(ret>=0) {
  file = card->curr_file;
  if(file->len>=0) {
   file->len = (card->sector_size-file->len);
   if(file->len<=0) {
    dirblock = __card_getdirblock(card);
    entry = &dirblock->entries[file->filenum];
    entry->lastmodified = time(((void*)0));
    cb = card->card_api_cb;
    card->card_api_cb = ((void*)0);
    if((ret=__card_updatedir(chn,cb))>=0) return;
   } else {
    fatblock = __card_getbatblock(card);
    file->offset += card->sector_size;
    file->iblock = fatblock->fat[file->iblock-CARD_SYSAREA];
    if(file->iblock<CARD_SYSAREA || file->iblock>=card->blocks) {
     ret = CARD_ERROR_BROKEN;
     goto exit;
    }
    if((ret=__card_sectorerase(chn,(file->iblock*card->sector_size),__erase_callback))>=0) return;
   }
  } else
   ret = CARD_ERROR_CANCELED;
 }

exit:
 cb = card->card_api_cb;
 card->card_api_cb = ((void*)0);
 __card_putcntrlblock(card,ret);
 if(cb) cb(chn,ret);
}
