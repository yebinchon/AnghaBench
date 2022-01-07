
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freq; int sample_size; int frag_frames; } ;


 int FALSE ;
 TYPE_1__ Sound_desired ;
 int Sound_enabled ;
 int Sound_latency ;
 int TRUE ;
 int Util_sscanbool (char*) ;
 int Util_sscandec (char*) ;
 scalar_t__ strcmp (char*,char*) ;

int Sound_ReadConfig(char *option, char *ptr)
{
 if (strcmp(option, "SOUND_ENABLED") == 0)
  return (Sound_enabled = Util_sscanbool(ptr)) != -1;
 else if (strcmp(option, "SOUND_RATE") == 0)
  return (Sound_desired.freq = Util_sscandec(ptr)) != -1;
 else if (strcmp(option, "SOUND_BITS") == 0) {
  int bits = Util_sscandec(ptr);
  if (bits != 8 && bits != 16)
   return FALSE;
  Sound_desired.sample_size = bits / 8;
 }
 else if (strcmp(option, "SOUND_FRAG_FRAMES") == 0) {
  int val = Util_sscandec(ptr);
  if (val == -1)
   return FALSE;
  Sound_desired.frag_frames = val;
 }




 else
  return FALSE;
 return TRUE;
}
