
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t s32 ;
typedef int (* cardcallback ) (size_t,int ) ;
struct TYPE_3__ {int (* card_ext_cb ) (size_t,int ) ;int (* card_exi_cb ) (size_t,int ) ;int timeout_svc; scalar_t__ attached; scalar_t__ card_tx_cb; } ;
typedef TYPE_1__ card_block ;


 int CARD_ERROR_NOCARD ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int EXI_RegisterEXICallback (size_t,int *) ;
 int SYS_CancelAlarm (int ) ;
 TYPE_1__* cardmap ;
 int printf (char*) ;

__attribute__((used)) static s32 __card_exthandler(s32 chn,s32 dev)
{
 cardcallback cb;
 card_block *card = ((void*)0);
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return 0;
 card = &cardmap[chn];

 if(card->attached) {
  if(card->card_tx_cb) {
   printf("error: card->card_tx_cb!=NULL\n");
  }
  card->attached = 0;
  EXI_RegisterEXICallback(chn,((void*)0));
  SYS_CancelAlarm(card->timeout_svc);

  cb = card->card_exi_cb;
  if(cb) {
   card->card_exi_cb = ((void*)0);
   cb(chn,CARD_ERROR_NOCARD);
  }

  cb = card->card_ext_cb;
  if(cb) {
   card->card_ext_cb = ((void*)0);
   cb(chn,CARD_ERROR_NOCARD);
  }

 }
 return 1;
}
