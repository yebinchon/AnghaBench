
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct card_direntry {int dummy; } ;
struct card_dat {int * entries; } ;
typedef scalar_t__ s32 ;
typedef int card_block ;


 scalar_t__ CARD_ERROR_BROKEN ;
 scalar_t__ CARD_ERROR_FATAL_ERROR ;
 scalar_t__ CARD_ERROR_NOCARD ;
 scalar_t__ CARD_ERROR_READY ;
 scalar_t__ CARD_MAXFILES ;
 scalar_t__ EXI_CHANNEL_0 ;
 scalar_t__ EXI_CHANNEL_2 ;
 scalar_t__ __card_getcntrlblock (scalar_t__,int **) ;
 struct card_dat* __card_getdirblock (int *) ;
 scalar_t__ __card_putcntrlblock (int *,scalar_t__) ;
 int memcpy (struct card_direntry*,int *,int) ;

__attribute__((used)) static s32 __card_getstatusex(s32 chn,s32 fileno,struct card_direntry *entry)
{
 s32 ret;
 card_block *card = ((void*)0);
 struct card_dat *dirblock = ((void*)0);

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 if(fileno<0 || fileno>=CARD_MAXFILES) return CARD_ERROR_FATAL_ERROR;
 if((ret=__card_getcntrlblock(chn,&card))<0) return ret;

 ret = CARD_ERROR_BROKEN;
 dirblock = __card_getdirblock(card);
 if(dirblock) {
  ret = CARD_ERROR_READY;
  memcpy(entry,&dirblock->entries[fileno],sizeof(struct card_direntry));
 }
 return __card_putcntrlblock(card,ret);
}
