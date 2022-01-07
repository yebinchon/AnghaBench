
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int gamma; int brightness; int contrast; int saturation; int hue; } ;
struct TYPE_5__ {int burst_phase; int bleed; int fringing; int artifacts; int resolution; int sharpness; } ;
struct TYPE_4__ {int gamma; int brightness; int contrast; int saturation; int hue; int burst_phase; int bleed; int fringing; int artifacts; int resolution; int sharpness; } ;


 TYPE_3__ COLOURS_NTSC_setup ;
 int FILTER_NTSC_PRESET_CUSTOM ;
 int FILTER_NTSC_PRESET_SIZE ;
 TYPE_2__ FILTER_NTSC_setup ;
 scalar_t__ Util_almostequal (int ,int ,double) ;
 TYPE_1__** presets ;

int FILTER_NTSC_GetPreset(void)
{
 int i;

 for (i = 0; i < FILTER_NTSC_PRESET_SIZE; i ++) {
  if (Util_almostequal(FILTER_NTSC_setup.sharpness, presets[i]->sharpness, 0.001) &&
      Util_almostequal(FILTER_NTSC_setup.resolution, presets[i]->resolution, 0.001) &&
      Util_almostequal(FILTER_NTSC_setup.artifacts, presets[i]->artifacts, 0.001) &&
      Util_almostequal(FILTER_NTSC_setup.fringing, presets[i]->fringing, 0.001) &&
      Util_almostequal(FILTER_NTSC_setup.bleed, presets[i]->bleed, 0.001) &&
      Util_almostequal(FILTER_NTSC_setup.burst_phase, presets[i]->burst_phase, 0.001) &&
      Util_almostequal(COLOURS_NTSC_setup.hue, presets[i]->hue, 0.001) &&
      Util_almostequal(COLOURS_NTSC_setup.saturation, presets[i]->saturation, 0.001) &&
      Util_almostequal(COLOURS_NTSC_setup.contrast, presets[i]->contrast, 0.001) &&
      Util_almostequal(COLOURS_NTSC_setup.brightness, presets[i]->brightness, 0.001) &&
      Util_almostequal(COLOURS_NTSC_setup.gamma, presets[i]->gamma, 0.001))
   return i;
 }
 return FILTER_NTSC_PRESET_CUSTOM;
}
