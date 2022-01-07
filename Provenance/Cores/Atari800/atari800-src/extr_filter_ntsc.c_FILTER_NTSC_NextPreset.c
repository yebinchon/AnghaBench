
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILTER_NTSC_GetPreset () ;
 int FILTER_NTSC_PRESET_COMPOSITE ;
 int FILTER_NTSC_PRESET_CUSTOM ;
 int FILTER_NTSC_PRESET_SIZE ;
 int FILTER_NTSC_SetPreset (int) ;

void FILTER_NTSC_NextPreset(void)
{
 int preset = FILTER_NTSC_GetPreset();

 if (preset == FILTER_NTSC_PRESET_CUSTOM)
  preset = FILTER_NTSC_PRESET_COMPOSITE;
 else
  preset = (preset + 1) % FILTER_NTSC_PRESET_SIZE;
 FILTER_NTSC_SetPreset(preset);
}
