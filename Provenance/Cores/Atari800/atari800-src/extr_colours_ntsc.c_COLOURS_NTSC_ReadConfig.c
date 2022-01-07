
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int loaded; int adjust; int filename; } ;
struct TYPE_3__ {int color_delay; int hue; int gamma; int brightness; int contrast; int saturation; } ;


 TYPE_2__ COLOURS_NTSC_external ;
 TYPE_1__ COLOURS_NTSC_setup ;
 int FALSE ;
 int TRUE ;
 int Util_sscanbool (char*) ;
 int Util_sscandouble (char*,int *) ;
 int Util_strlcpy (int ,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

int COLOURS_NTSC_ReadConfig(char *option, char *ptr)
{
 if (strcmp(option, "COLOURS_NTSC_SATURATION") == 0)
  return Util_sscandouble(ptr, &COLOURS_NTSC_setup.saturation);
 else if (strcmp(option, "COLOURS_NTSC_CONTRAST") == 0)
  return Util_sscandouble(ptr, &COLOURS_NTSC_setup.contrast);
 else if (strcmp(option, "COLOURS_NTSC_BRIGHTNESS") == 0)
  return Util_sscandouble(ptr, &COLOURS_NTSC_setup.brightness);
 else if (strcmp(option, "COLOURS_NTSC_GAMMA") == 0)
  return Util_sscandouble(ptr, &COLOURS_NTSC_setup.gamma);
 else if (strcmp(option, "COLOURS_NTSC_HUE") == 0)
  return Util_sscandouble(ptr, &COLOURS_NTSC_setup.hue);
 else if (strcmp(option, "COLOURS_NTSC_GTIA_DELAY") == 0)
  return Util_sscandouble(ptr, &COLOURS_NTSC_setup.color_delay);
 else if (strcmp(option, "COLOURS_NTSC_EXTERNAL_PALETTE") == 0)
  Util_strlcpy(COLOURS_NTSC_external.filename, ptr, sizeof(COLOURS_NTSC_external.filename));
 else if (strcmp(option, "COLOURS_NTSC_EXTERNAL_PALETTE_LOADED") == 0)

  return (COLOURS_NTSC_external.loaded = Util_sscanbool(ptr)) != -1;
 else if (strcmp(option, "COLOURS_NTSC_ADJUST_EXTERNAL_PALETTE") == 0)
  return (COLOURS_NTSC_external.adjust = Util_sscanbool(ptr)) != -1;
 else
  return FALSE;
 return TRUE;
}
