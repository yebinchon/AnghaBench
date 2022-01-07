
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int * slot; } ;


 scalar_t__ CDDA_DELAY_SAMPLES ;
 int PSP_UC (int ) ;
 int ScspGenerateAudioForCDDA (scalar_t__*,scalar_t__*,size_t) ;
 int ScspGenerateAudioForSlot (int *,size_t) ;
 scalar_t__ cdda_delay ;
 int cdda_next_in ;
 int cdda_next_out ;
 TYPE_1__ scsp ;
 scalar_t__* scsp_bufL ;
 scalar_t__* scsp_bufR ;

__attribute__((used)) static void ScspGenerateAudio(s32 *bufL, s32 *bufR, u32 samples)
{
   int slotnum;

   u32 i;
   for (i = 0; i < samples; i++)
      bufL[i] = bufR[i] = 0;

   scsp_bufL = bufL;
   scsp_bufR = bufR;
   for (slotnum = 0; slotnum < 32; slotnum++)
      ScspGenerateAudioForSlot(&scsp.slot[slotnum], samples);

   if (cdda_next_out != PSP_UC(cdda_next_in) * 2352)
   {
      if (cdda_delay > 0)
      {
         if (samples > cdda_delay)
         {
            samples -= cdda_delay;
            cdda_delay = 0;
         }
         else
         {
            cdda_delay -= samples;
            samples = 0;
         }
      }
      if (cdda_delay == 0)
         ScspGenerateAudioForCDDA(bufL, bufR, samples);
   }
   if (cdda_next_out == PSP_UC(cdda_next_in) * 2352)
      cdda_delay = CDDA_DELAY_SAMPLES;
}
