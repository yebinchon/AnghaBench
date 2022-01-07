
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_4__ {int* cmd; int* workarea; int cmd_mode; int cmd_usr_buf; int latency; int cmd_len; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_NOCARD ;
 size_t CARD_ERROR_READY ;
 int CARD_READSIZE ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int EXI_DEVICE_0 ;
 int EXI_Deselect (size_t) ;
 scalar_t__ EXI_Dma (size_t,int ,int,int,int ) ;
 scalar_t__ EXI_ImmEx (size_t,int*,int ,int ) ;
 int EXI_SPEED16MHZ ;
 scalar_t__ EXI_Select (size_t,int ,int ) ;
 int EXI_Unlock (size_t) ;
 int EXI_WRITE ;
 int __card_txhandler ;
 int __setuptimeout (TYPE_1__*) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __retry(s32 chn)
{
 u32 len;
 card_block *card = ((void*)0);

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 card = &cardmap[chn];
 if(EXI_Select(chn,EXI_DEVICE_0,EXI_SPEED16MHZ)==0) {
  EXI_Unlock(chn);
  return CARD_ERROR_NOCARD;
 }

 __setuptimeout(card);

 if(EXI_ImmEx(chn,card->cmd,card->cmd_len,EXI_WRITE)==0) {
  EXI_Deselect(chn);
  EXI_Unlock(chn);
  return CARD_ERROR_NOCARD;
 }

 if(card->cmd[0]==0x52) {
  if(EXI_ImmEx(chn,card->workarea+CARD_READSIZE,card->latency,EXI_WRITE)==0) {
   EXI_Deselect(chn);
   EXI_Unlock(chn);
   return CARD_ERROR_NOCARD;
  }
 }

 if(card->cmd_mode==-1) {
  EXI_Deselect(chn);
  EXI_Unlock(chn);
  return CARD_ERROR_READY;
 }

 len = 128;
 if(card->cmd[0]==0x52) len = CARD_READSIZE;
 if(EXI_Dma(chn,card->cmd_usr_buf,len,card->cmd_mode,__card_txhandler)==0) {
  EXI_Deselect(chn);
  EXI_Unlock(chn);
  return CARD_ERROR_NOCARD;
 }
 return CARD_ERROR_READY;
}
