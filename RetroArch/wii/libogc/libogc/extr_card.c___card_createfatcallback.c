
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct card_direntry {int pad_00; int iconaddr; int iconspeed; int pad_01; int lastmodified; scalar_t__ iconfmt; scalar_t__ copytimes; int permission; int block; int company; int gamecode; } ;
struct card_dat {struct card_direntry* entries; } ;
typedef size_t s32 ;
typedef int (* cardcallback ) (size_t,size_t) ;
struct TYPE_6__ {size_t filenum; int iblock; scalar_t__ offset; } ;
typedef TYPE_1__ card_file ;
struct TYPE_7__ {int curr_fileblock; TYPE_1__* curr_file; int (* card_api_cb ) (size_t,size_t) ;} ;
typedef TYPE_2__ card_block ;


 int CARD_ATTRIB_PUBLIC ;
 int CARD_SPEED_FAST ;
 int CARD_SPEED_MASK ;
 struct card_dat* __card_getdirblock (TYPE_2__*) ;
 int __card_putcntrlblock (TYPE_2__*,size_t) ;
 size_t __card_updatedir (size_t,int (*) (size_t,size_t)) ;
 int* card_company ;
 int* card_gamecode ;
 TYPE_2__* cardmap ;
 int memcpy (int ,int*,int) ;
 int memset (int ,int ,int) ;
 int time (int *) ;

__attribute__((used)) static void __card_createfatcallback(s32 chn,s32 result)
{
 s32 ret;
 cardcallback cb = ((void*)0);
 card_file *file = ((void*)0);
 struct card_direntry *entry = ((void*)0);
 struct card_dat *dirblock = ((void*)0);
 card_block *card = &cardmap[chn];
 cb = card->card_api_cb;
 card->card_api_cb = ((void*)0);

 dirblock = __card_getdirblock(card);

 file = card->curr_file;
 entry = &dirblock->entries[file->filenum];

 memset(entry->gamecode,0,4);
 memset(entry->company,0,2);
 if(card_gamecode[0]!=0xff) memcpy(entry->gamecode,card_gamecode,4);
 if(card_gamecode[0]!=0xff) memcpy(entry->company,card_company,2);
 entry->block = card->curr_fileblock;
 entry->permission = CARD_ATTRIB_PUBLIC;
 entry->pad_00 = 0xff;
 entry->copytimes = 0;
 entry->iconaddr = -1;
 entry->iconfmt = 0;
 entry->iconspeed = 0;
 entry->pad_01 = 0xffff;
 entry->iconspeed = (entry->iconspeed&~CARD_SPEED_MASK)|CARD_SPEED_FAST;
 entry->lastmodified = time(((void*)0));

 file->offset = 0;
 file->iblock = card->curr_fileblock;

 if((ret=__card_updatedir(chn,cb))<0) {
  __card_putcntrlblock(card,ret);
  if(cb) cb(chn,ret);
 }
}
