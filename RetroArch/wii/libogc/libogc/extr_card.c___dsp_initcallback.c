
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef int dsptask_t ;
struct TYPE_3__ {scalar_t__ workarea; int dsp_task; } ;
typedef TYPE_1__ card_block ;


 scalar_t__ DSP_CheckMailTo () ;
 int DSP_SendMailTo (size_t) ;
 size_t EXI_CHANNEL_2 ;
 TYPE_1__* cardmap ;

__attribute__((used)) static void __dsp_initcallback(dsptask_t *task)
{
 u32 chn;
 card_block *card = ((void*)0);
 chn = 0;
 while(chn<EXI_CHANNEL_2) {
  card = &cardmap[chn];
  if(&card->dsp_task==task) break;
  chn++;
 }
 if(chn>=EXI_CHANNEL_2) return;

 DSP_SendMailTo(0xFF000000);
 while(DSP_CheckMailTo());
 DSP_SendMailTo((u32)card->workarea);
 while(DSP_CheckMailTo());
}
