
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t s32 ;
typedef int (* cardcallback ) (size_t,size_t) ;
struct TYPE_4__ {scalar_t__ cmd_blck_cnt; int (* card_xfer_cb ) (size_t,size_t) ;int card_api_cb; int cmd_usr_buf; int cmd_sector_addr; int transfer_cnt; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_READY ;
 scalar_t__ CARD_READSIZE ;
 int __card_putcntrlblock (TYPE_1__*,size_t) ;
 size_t __card_readsegment (size_t,void (*) (size_t,size_t)) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static void __blockreadcallback(s32 chn,s32 result)
{
 s32 ret = CARD_ERROR_READY;
 cardcallback cb = ((void*)0);
 card_block *card = &cardmap[chn];
 ret = result;
 if(ret>=0) {
  card->transfer_cnt += CARD_READSIZE;
  card->cmd_sector_addr += CARD_READSIZE;
  card->cmd_usr_buf += CARD_READSIZE;
  if((--card->cmd_blck_cnt)>0) {
   if((ret=__card_readsegment(chn,__blockreadcallback))>=CARD_ERROR_READY) return;
  }
 }

 if(!card->card_api_cb) __card_putcntrlblock(card,ret);
 cb = card->card_xfer_cb;
 if(cb) {
  card->card_xfer_cb = ((void*)0);
  cb(chn,ret);
 }
}
