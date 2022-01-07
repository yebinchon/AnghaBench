
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t s32 ;
typedef int (* cardcallback ) (size_t,size_t) ;
struct TYPE_3__ {void (* card_unlock_cb ) (size_t,size_t) ;int* cmd; int (* card_exi_cb ) (size_t,size_t) ;int (* card_tx_cb ) (size_t,size_t) ;} ;
typedef TYPE_1__ card_block ;


 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int EXI_DEVICE_0 ;
 int EXI_Lock (size_t,int ,int ) ;
 int __card_unlockedhandler ;
 size_t __retry (size_t) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static void __unlocked_callback(s32 chn,s32 result)
{
 s32 ret;
 card_block *card;
 cardcallback cb;
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return;
 card = &cardmap[chn];

 ret = result;
 if(ret>=0) {
  card->card_unlock_cb = __unlocked_callback;
  if(EXI_Lock(chn,EXI_DEVICE_0,__card_unlockedhandler)==1) {
   card->card_unlock_cb = ((void*)0);
   ret = __retry(chn);
  } else
   ret = 0;
 }
 if(ret<0) {
  if(card->cmd[0]==0xf3 || card->cmd[0]>=0xf5) return;
  else if(card->cmd[0]==0x52) {
   cb = card->card_tx_cb;
   if(cb) {
    card->card_tx_cb = ((void*)0);
    cb(chn,ret);
   }
  } else if(card->cmd[0]>=0xf1) {
   cb = card->card_exi_cb;
   if(cb) {
    card->card_exi_cb = ((void*)0);
    cb(chn,ret);
   }
  }
 }
}
