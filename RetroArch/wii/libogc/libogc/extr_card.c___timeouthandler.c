
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ syswd_t ;
typedef int s32 ;
typedef int (* cardcallback ) (size_t,int ) ;
struct TYPE_3__ {scalar_t__ timeout_svc; int (* card_exi_cb ) (size_t,int ) ;scalar_t__ attached; } ;
typedef TYPE_1__ card_block ;


 int CARD_ERROR_IOERROR ;
 int CARD_ERROR_READY ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int EXI_RegisterEXICallback (size_t,int *) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static void __timeouthandler(syswd_t alarm,void *cbarg)
{
 u32 chn;
 s32 ret = CARD_ERROR_READY;
 cardcallback cb;
 card_block *card = ((void*)0);
 chn = 0;
 while(chn<EXI_CHANNEL_2) {
  card = &cardmap[chn];
  if(card->timeout_svc==alarm) break;
  chn++;
 }
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return;

 if(card->attached) {
  EXI_RegisterEXICallback(chn,((void*)0));
  cb = card->card_exi_cb;
  if(cb) {
   card->card_exi_cb = ((void*)0);
   ret = CARD_ERROR_IOERROR;
   cb(chn,ret);
  }
 }
}
