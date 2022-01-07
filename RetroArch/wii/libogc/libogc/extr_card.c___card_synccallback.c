
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {int wait_sync_queue; } ;
typedef TYPE_1__ card_block ;


 int LWP_ThreadBroadcast (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static void __card_synccallback(s32 chn,s32 result)
{
 u32 level;
 card_block *card = &cardmap[chn];
 _CPU_ISR_Disable(level);
 LWP_ThreadBroadcast(card->wait_sync_queue);
 _CPU_ISR_Restore(level);
}
