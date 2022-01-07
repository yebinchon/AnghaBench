
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gamma; int brightness; int contrast; int saturation; int hue; } ;
struct TYPE_4__ {int gamma; int brightness; int contrast; int saturation; int hue; } ;


 TYPE_3__ COLOURS_NTSC_setup ;
 int FILTER_NTSC_PRESET_CUSTOM ;
 TYPE_1__ FILTER_NTSC_setup ;
 TYPE_1__** presets ;

void FILTER_NTSC_SetPreset(int preset)
{
 if (preset < FILTER_NTSC_PRESET_CUSTOM) {
  FILTER_NTSC_setup = *presets[preset];


  COLOURS_NTSC_setup.hue = FILTER_NTSC_setup.hue;
  COLOURS_NTSC_setup.saturation = FILTER_NTSC_setup.saturation;
  COLOURS_NTSC_setup.contrast = FILTER_NTSC_setup.contrast;
  COLOURS_NTSC_setup.brightness = FILTER_NTSC_setup.brightness;
  COLOURS_NTSC_setup.gamma = FILTER_NTSC_setup.gamma;
 }
}
