
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int cpu_ticks_last; int playpos; } ;
typedef TYPE_1__ ctr_csnd_audio_t ;


 int CTR_CSND_AUDIO_COUNT_MASK ;
 int CTR_CSND_CPU_TICKS_PER_SAMPLE ;
 int svcGetSystemTick () ;

__attribute__((used)) static void ctr_csnd_audio_update_playpos(ctr_csnd_audio_t* ctr)
{
   uint64_t current_tick = svcGetSystemTick();
   uint32_t samples_played = (current_tick - ctr->cpu_ticks_last)
      / CTR_CSND_CPU_TICKS_PER_SAMPLE;

   ctr->playpos = (ctr->playpos + samples_played) & CTR_CSND_AUDIO_COUNT_MASK;
   ctr->cpu_ticks_last += samples_played * CTR_CSND_CPU_TICKS_PER_SAMPLE;
}
