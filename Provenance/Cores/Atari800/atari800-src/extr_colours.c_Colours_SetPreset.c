
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Colours_preset_t ;


 scalar_t__ Atari800_TV_NTSC ;
 scalar_t__ Atari800_tv_mode ;
 int COLOURS_NTSC_RestoreDefaults () ;
 int COLOURS_PAL_RestoreDefaults () ;
 size_t COLOURS_PRESET_CUSTOM ;
 int * Colours_setup ;
 int * presets ;

void Colours_SetPreset(Colours_preset_t preset)
{
 if (preset < COLOURS_PRESET_CUSTOM) {
  *Colours_setup = presets[preset];
  if (Atari800_tv_mode == Atari800_TV_NTSC)
   COLOURS_NTSC_RestoreDefaults();
  else
   COLOURS_PAL_RestoreDefaults();
 }
}
