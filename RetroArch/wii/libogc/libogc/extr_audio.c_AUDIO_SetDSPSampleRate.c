
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 size_t AI_CONTROL ;
 int AI_DMAFR ;
 scalar_t__ AI_SAMPLERATE_32KHZ ;
 scalar_t__ AUDIO_GetDSPSampleRate () ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __AISRCINIT () ;
 int * _aiReg ;

void AUDIO_SetDSPSampleRate(u8 rate)
{
 u32 level;

 if(AUDIO_GetDSPSampleRate()!=rate) {
  _aiReg[AI_CONTROL] &= ~AI_DMAFR;
  if(rate==AI_SAMPLERATE_32KHZ) {
   _CPU_ISR_Disable(level);
   __AISRCINIT();
   _aiReg[AI_CONTROL] |= AI_DMAFR;
   _CPU_ISR_Restore(level);
  }
 }
}
