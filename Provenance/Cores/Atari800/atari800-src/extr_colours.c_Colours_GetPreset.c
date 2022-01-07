
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ black_level; scalar_t__ white_level; int gamma; int brightness; int contrast; int saturation; int hue; } ;
struct TYPE_3__ {scalar_t__ black_level; scalar_t__ white_level; int gamma; int brightness; int contrast; int saturation; int hue; } ;
typedef int Colours_preset_t ;


 scalar_t__ Atari800_TV_NTSC ;
 scalar_t__ Atari800_TV_PAL ;
 scalar_t__ Atari800_tv_mode ;
 scalar_t__ COLOURS_NTSC_GetPreset () ;
 scalar_t__ COLOURS_PAL_GetPreset () ;
 int COLOURS_PRESET_CUSTOM ;
 int COLOURS_PRESET_SIZE ;
 scalar_t__ COLOURS_PRESET_STANDARD ;
 TYPE_2__* Colours_setup ;
 scalar_t__ Util_almostequal (int ,int ,double) ;
 TYPE_1__* presets ;

Colours_preset_t Colours_GetPreset(void)
{
 int i;

 if ((Atari800_tv_mode == Atari800_TV_NTSC &&
      COLOURS_NTSC_GetPreset() != COLOURS_PRESET_STANDARD) ||
     (Atari800_tv_mode == Atari800_TV_PAL &&
      COLOURS_PAL_GetPreset() != COLOURS_PRESET_STANDARD))
  return COLOURS_PRESET_CUSTOM;

 for (i = 0; i < COLOURS_PRESET_SIZE; i ++) {
  if (Util_almostequal(Colours_setup->hue, presets[i].hue, 0.001) &&
      Util_almostequal(Colours_setup->saturation, presets[i].saturation, 0.001) &&
      Util_almostequal(Colours_setup->contrast, presets[i].contrast, 0.001) &&
      Util_almostequal(Colours_setup->brightness, presets[i].brightness, 0.001) &&
      Util_almostequal(Colours_setup->gamma, presets[i].gamma, 0.001) &&
      Colours_setup->black_level == presets[i].black_level &&
      Colours_setup->white_level == presets[i].white_level)
   return i;
 }
 return COLOURS_PRESET_CUSTOM;
}
