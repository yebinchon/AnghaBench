
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t s32 ;
typedef int (* cardcallback ) (size_t,size_t) ;
struct TYPE_4__ {int curr_fileblock; int (* card_api_cb ) (size_t,size_t) ;} ;
typedef TYPE_1__ card_block ;


 size_t __card_freeblock (size_t,int ,int (*) (size_t,size_t)) ;
 int __card_putcntrlblock (TYPE_1__*,size_t) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static void __delete_callback(s32 chn,s32 result)
{
 s32 ret;
 cardcallback cb = ((void*)0);
 card_block *card = &cardmap[chn];
 cb = card->card_api_cb;
 card->card_api_cb = ((void*)0);

 ret = result;
 if(ret>=0 && (ret=__card_freeblock(chn,card->curr_fileblock,cb))>=0) return;

 __card_putcntrlblock(card,ret);
 if(cb) cb(chn,ret);
}
