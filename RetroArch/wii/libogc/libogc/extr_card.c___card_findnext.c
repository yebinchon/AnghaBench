
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct card_direntry {int* gamecode; int* company; int length; int* filename; } ;
struct card_dat {struct card_direntry* entries; } ;
typedef int s32 ;
struct TYPE_7__ {scalar_t__ chn; size_t fileno; int filelen; int company; int gamecode; int filename; scalar_t__ showall; } ;
typedef TYPE_1__ card_dir ;
struct TYPE_8__ {int sector_size; int attached; } ;
typedef TYPE_2__ card_block ;


 int CARD_ERROR_NOCARD ;
 int CARD_ERROR_NOFILE ;
 int CARD_ERROR_READY ;
 int CARD_FILENAMELEN ;
 size_t CARD_MAXFILES ;
 scalar_t__ EXI_CHANNEL_0 ;
 scalar_t__ EXI_CHANNEL_2 ;
 int __card_getcntrlblock (scalar_t__,TYPE_2__**) ;
 struct card_dat* __card_getdirblock (TYPE_2__*) ;
 int __card_putcntrlblock (TYPE_2__*,int ) ;
 int card_company ;
 int card_gamecode ;
 scalar_t__ memcmp (int*,int ,int) ;
 int memcpy (int ,int*,int) ;

s32 __card_findnext(card_dir *dir)
{
 s32 ret;
 struct card_dat *dirblock = ((void*)0);
 struct card_direntry *entries = ((void*)0);
 card_block *card = ((void*)0);

 if(dir->chn<EXI_CHANNEL_0 || dir->chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 if(dir->fileno>=CARD_MAXFILES) return CARD_ERROR_NOFILE;
 if((ret=__card_getcntrlblock(dir->chn,&card))<0) return ret;

 if(!card->attached) return CARD_ERROR_NOCARD;
 dirblock = __card_getdirblock(card);

 entries = dirblock->entries;
 do {

  if(entries[dir->fileno].gamecode[0]!=0xff) {
   if ((dir->showall || memcmp(entries[dir->fileno].gamecode,card_gamecode,4)==0)
    && (dir->showall || memcmp(entries[dir->fileno].company,card_company,2)==0)) {
    dir->filelen = entries[dir->fileno].length*card->sector_size;
    memcpy(dir->filename, entries[dir->fileno].filename, CARD_FILENAMELEN);
    memcpy(dir->gamecode, entries[dir->fileno].gamecode, 4);
    memcpy(dir->company, entries[dir->fileno].company, 2);

    __card_putcntrlblock(card,CARD_ERROR_READY);
    return CARD_ERROR_READY;
   }
  }
  dir->fileno++;
 } while (dir->fileno < CARD_MAXFILES);
 __card_putcntrlblock(card,CARD_ERROR_NOFILE);
 return CARD_ERROR_NOFILE;
}
