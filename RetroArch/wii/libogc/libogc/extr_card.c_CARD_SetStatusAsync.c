
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct card_direntry {int iconaddr; int iconfmt; int commentaddr; int lastmodified; int iconspeed; int bannerfmt; } ;
struct card_dat {struct card_direntry* entries; } ;
typedef scalar_t__ s32 ;
typedef int cardcallback ;
struct TYPE_4__ {int icon_addr; int comment_addr; int icon_fmt; int icon_speed; int banner_fmt; } ;
typedef TYPE_1__ card_stat ;
typedef int card_block ;


 scalar_t__ CARD_ERROR_BROKEN ;
 scalar_t__ CARD_ERROR_FATAL_ERROR ;
 scalar_t__ CARD_ERROR_NOCARD ;
 int CARD_ICON_CI ;
 int CARD_ICON_MASK ;
 scalar_t__ CARD_MAXFILES ;
 int CARD_READSIZE ;
 scalar_t__ EXI_CHANNEL_0 ;
 scalar_t__ EXI_CHANNEL_2 ;
 scalar_t__ __card_getcntrlblock (scalar_t__,int **) ;
 struct card_dat* __card_getdirblock (int *) ;
 scalar_t__ __card_putcntrlblock (int *,scalar_t__) ;
 scalar_t__ __card_updatedir (scalar_t__,int ) ;
 int __card_updateiconoffsets (struct card_direntry*,TYPE_1__*) ;
 int time (int *) ;

s32 CARD_SetStatusAsync(s32 chn,s32 fileno,card_stat *stats,cardcallback callback)
{
 s32 ret;
 card_block *card = ((void*)0);
 struct card_dat *dirblock = ((void*)0);
 struct card_direntry *entry = ((void*)0);

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 if(fileno<0 || fileno>=CARD_MAXFILES) return CARD_ERROR_FATAL_ERROR;
 if(stats->icon_addr!=-1 && stats->icon_addr>CARD_READSIZE) return CARD_ERROR_FATAL_ERROR;
 if(stats->comment_addr!=-1 && stats->comment_addr>8128) return CARD_ERROR_FATAL_ERROR;
 if((ret=__card_getcntrlblock(chn,&card))<0) return ret;

 ret = CARD_ERROR_BROKEN;
 dirblock = __card_getdirblock(card);
 if(dirblock) {
  entry = &dirblock->entries[fileno];
  entry->bannerfmt = stats->banner_fmt;
  entry->iconaddr = stats->icon_addr;
  entry->iconfmt = stats->icon_fmt;
  entry->iconspeed = stats->icon_speed;
  entry->commentaddr = stats->comment_addr;
  __card_updateiconoffsets(entry,stats);

  if(entry->iconaddr==-1) entry->iconfmt = ((entry->iconfmt&~CARD_ICON_MASK)|CARD_ICON_CI);

  entry->lastmodified = time(((void*)0));
  if((ret=__card_updatedir(chn,callback))>=0) return ret;
 }

 return __card_putcntrlblock(card,ret);
}
