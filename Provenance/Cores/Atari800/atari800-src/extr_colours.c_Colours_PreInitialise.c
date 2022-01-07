
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOURS_NTSC_RestoreDefaults () ;
 int COLOURS_NTSC_setup ;
 int COLOURS_PAL_RestoreDefaults () ;
 int COLOURS_PAL_setup ;
 size_t COLOURS_PRESET_STANDARD ;
 int * presets ;

void Colours_PreInitialise(void)
{

 COLOURS_NTSC_setup = COLOURS_PAL_setup = presets[COLOURS_PRESET_STANDARD];
 COLOURS_NTSC_RestoreDefaults();
 COLOURS_PAL_RestoreDefaults();
}
