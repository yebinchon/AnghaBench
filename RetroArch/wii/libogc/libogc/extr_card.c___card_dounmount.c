
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {size_t result; int timeout_svc; scalar_t__ mount_step; scalar_t__ attached; } ;
typedef TYPE_1__ card_block ;


 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int EXI_Detach (size_t) ;
 int EXI_RegisterEXICallback (size_t,int *) ;
 int SYS_CancelAlarm (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static void __card_dounmount(s32 chn,s32 result)
{
 u32 level;
 card_block *card;

 if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return;
 card = &cardmap[chn];

 _CPU_ISR_Disable(level);
 if(card->attached) {
  card->attached = 0;
  card->mount_step = 0;
  card->result = result;
  EXI_RegisterEXICallback(chn,((void*)0));
  EXI_Detach(chn);
  SYS_CancelAlarm(card->timeout_svc);
 }
 _CPU_ISR_Restore(level);
}
