
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int burst_phase; int bleed; int fringing; int artifacts; int resolution; int sharpness; } ;


 int FALSE ;
 TYPE_1__ FILTER_NTSC_setup ;
 int Util_sscandouble (char*,int *) ;
 scalar_t__ strcmp (char*,char*) ;

int FILTER_NTSC_ReadConfig(char *option, char *ptr)
{
 if (strcmp(option, "FILTER_NTSC_SHARPNESS") == 0)
  return Util_sscandouble(ptr, &FILTER_NTSC_setup.sharpness);
 else if (strcmp(option, "FILTER_NTSC_RESOLUTION") == 0)
  return Util_sscandouble(ptr, &FILTER_NTSC_setup.resolution);
 else if (strcmp(option, "FILTER_NTSC_ARTIFACTS") == 0)
  return Util_sscandouble(ptr, &FILTER_NTSC_setup.artifacts);
 else if (strcmp(option, "FILTER_NTSC_FRINGING") == 0)
  return Util_sscandouble(ptr, &FILTER_NTSC_setup.fringing);
 else if (strcmp(option, "FILTER_NTSC_BLEED") == 0)
  return Util_sscandouble(ptr, &FILTER_NTSC_setup.bleed);
 else if (strcmp(option, "FILTER_NTSC_BURST_PHASE") == 0)
  return Util_sscandouble(ptr, &FILTER_NTSC_setup.burst_phase);
 else
  return FALSE;
}
