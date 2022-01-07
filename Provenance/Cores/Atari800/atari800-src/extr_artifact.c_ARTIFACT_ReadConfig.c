
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANTIC_artif_mode ;
 int ARTIFACT_SIZE ;
 int CFG_MatchTextParameter (char*,int ,int ) ;
 int FALSE ;
 int TRUE ;
 int Util_sscandec (char*) ;
 int mode_cfg_strings ;
 int mode_ntsc ;
 int mode_pal ;
 scalar_t__ strcmp (char*,char*) ;

int ARTIFACT_ReadConfig(char *option, char *ptr)
{
 if (strcmp(option, "ARTIFACT_NTSC") == 0) {
  int i = CFG_MatchTextParameter(ptr, mode_cfg_strings, ARTIFACT_SIZE);
  if (i < 0)
   return FALSE;
  mode_ntsc = i;
 }
 else if (strcmp(option, "ARTIFACT_PAL") == 0) {
  int i = CFG_MatchTextParameter(ptr, mode_cfg_strings, ARTIFACT_SIZE);
  if (i < 0)
   return FALSE;
  mode_pal = i;
 }
 else if (strcmp(option, "ARTIFACT_NTSC_MODE") == 0) {
  int i = Util_sscandec(ptr);
  if (i < 0 || i > 4)
   return FALSE;
  ANTIC_artif_mode = i;
 }
 else
  return FALSE;
 return TRUE;
}
