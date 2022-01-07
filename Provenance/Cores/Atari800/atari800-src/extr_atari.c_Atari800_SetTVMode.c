
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sample_size; int channels; int freq; } ;


 int ARTIFACT_SetTVMode (int) ;
 int Atari800_tv_mode ;
 int Colours_SetVideoSystem (int) ;
 int POKEYSND_BIT16 ;
 int POKEYSND_FREQ_17_EXACT ;
 int POKEYSND_Init (int ,int ,int ,int ) ;
 int SetTVModeMenuItem (int) ;
 int Sound_Reinit () ;
 TYPE_1__ Sound_out ;
 int VIDEOMODE_SetVideoSystem (int) ;

void Atari800_SetTVMode(int mode)
{
 if (mode != Atari800_tv_mode) {
  Atari800_tv_mode = mode;

  Colours_SetVideoSystem(mode);
  ARTIFACT_SetTVMode(mode);
 }
}
