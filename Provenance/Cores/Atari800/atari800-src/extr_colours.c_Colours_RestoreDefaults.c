
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOURS_PRESET_STANDARD ;
 int Colours_SetPreset (int ) ;

void Colours_RestoreDefaults(void)
{
 Colours_SetPreset(COLOURS_PRESET_STANDARD);
}
