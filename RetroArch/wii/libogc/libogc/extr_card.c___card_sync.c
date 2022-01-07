
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {int wait_sync_queue; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_BUSY ;
 size_t CARD_GetErrorCode (size_t) ;
 int LWP_ThreadSleep (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_sync(s32 chn)
{
 s32 ret;
 u32 level;
 card_block *card = &cardmap[chn];

 _CPU_ISR_Disable(level);
 while((ret=CARD_GetErrorCode(chn))==CARD_ERROR_BUSY) {
  LWP_ThreadSleep(card->wait_sync_queue);
 }
 _CPU_ISR_Restore(level);
 return ret;
}
