
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int s32 ;
typedef int (* cardcallback ) (int,int) ;
struct TYPE_3__ {scalar_t__ cmd_retries; int (* card_exi_cb ) (int,int) ;scalar_t__ attached; int timeout_svc; } ;
typedef TYPE_1__ card_block ;


 int CARD_ERROR_FATAL_ERROR ;
 int CARD_ERROR_IOERROR ;
 int CARD_ERROR_READY ;
 int EXI_CHANNEL_0 ;
 int EXI_CHANNEL_2 ;
 int EXI_DEVICE_0 ;
 int EXI_Lock (int,int ,int *) ;
 int EXI_Unlock (int) ;
 int SYS_CancelAlarm (int ) ;
 int __card_clearstatus (int) ;
 int __card_readstatus (int,int*) ;
 int __retry (int) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_exihandler(s32 chn,s32 dev)
{
 u8 status;
 s32 ret = CARD_ERROR_READY;
 card_block *card = ((void*)0);
 cardcallback cb;
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return 1;
 card = &cardmap[chn];

 SYS_CancelAlarm(card->timeout_svc);
 if(card->attached) {
  if(EXI_Lock(chn,EXI_DEVICE_0,((void*)0))==1) {
   if((ret=__card_readstatus(chn,&status))>=0
    && (ret=__card_clearstatus(chn))>=0) {
    if(status&0x18) ret = CARD_ERROR_IOERROR;
    else ret = CARD_ERROR_READY;

    if(ret==CARD_ERROR_IOERROR) {
     if((--card->cmd_retries)>0) {
      ret = __retry(chn);
      if(ret<0) goto exit;
      return 1;
     }
    }
   }
   EXI_Unlock(chn);
  } else ret = CARD_ERROR_FATAL_ERROR;
exit:
  cb = card->card_exi_cb;
  if(cb) {
   card->card_exi_cb = ((void*)0);
   cb(chn,ret);
  }
 }
 return 1;
}
