
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFP_IRQ_off ;
 int Mfree (int ) ;
 int Supexec (int ) ;
 int dsp_buffer1 ;
 scalar_t__ sound_enabled ;

void Sound_Exit(void)
{
 if (sound_enabled) {
  Supexec(MFP_IRQ_off);
  Mfree(dsp_buffer1);
 }
}
