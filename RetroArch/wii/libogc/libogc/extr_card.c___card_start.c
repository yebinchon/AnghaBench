
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
typedef void* cardcallback ;
struct TYPE_4__ {int * card_unlock_cb; void* card_exi_cb; void* card_tx_cb; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_BUSY ;
 size_t CARD_ERROR_NOCARD ;
 size_t CARD_ERROR_READY ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int EXI_DEVICE_0 ;
 scalar_t__ EXI_Lock (size_t,int ,int ) ;
 int EXI_SPEED16MHZ ;
 scalar_t__ EXI_Select (size_t,int ,int ) ;
 int EXI_Unlock (size_t) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __card_unlockedhandler ;
 int __setuptimeout (TYPE_1__*) ;
 int * __unlocked_callback ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_start(s32 chn,cardcallback tx_cb,cardcallback exi_cb)
{
 u32 level;
 card_block *card = ((void*)0);
 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
 card = &cardmap[chn];

 _CPU_ISR_Disable(level);
 if(tx_cb) card->card_tx_cb = tx_cb;
 if(exi_cb) card->card_exi_cb = exi_cb;

 card->card_unlock_cb = __unlocked_callback;
 if(EXI_Lock(chn,EXI_DEVICE_0,__card_unlockedhandler)==0) {
  _CPU_ISR_Restore(level);
  return CARD_ERROR_BUSY;
 }
 card->card_unlock_cb = ((void*)0);

 if(EXI_Select(chn,EXI_DEVICE_0,EXI_SPEED16MHZ)==0) {
  EXI_Unlock(chn);
  _CPU_ISR_Restore(level);
  return CARD_ERROR_NOCARD;
 }

 __setuptimeout(card);
 _CPU_ISR_Restore(level);

 return CARD_ERROR_READY;
}
