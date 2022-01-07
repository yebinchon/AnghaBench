
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARTIFACT_NONE ;
 int ARTIFACT_SIZE ;
 int Atari800_tv_mode ;
 int CFG_MatchTextParameter (char*,int ,int ) ;
 int FALSE ;
 int Log_print (char*,...) ;
 int TRUE ;
 int UpdateFromTVMode (int ) ;
 int UpdateMode (int ,int) ;
 int mode_cfg_strings ;
 int mode_ntsc ;
 int mode_pal ;
 scalar_t__ strcmp (char*,char*) ;

int ARTIFACT_Initialise(int *argc, char *argv[])
{
 int i;
 int j;

 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;

  if (strcmp(argv[i], "-ntsc-artif") == 0) {
   if (i_a) {
    int idx = CFG_MatchTextParameter(argv[++i], mode_cfg_strings, ARTIFACT_SIZE);
    if (idx < 0) {
     Log_print("Invalid value for -ntsc-artif");
     return FALSE;
    }
    mode_ntsc = idx;
   } else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-pal-artif") == 0) {
   if (i_a) {
    int idx = CFG_MatchTextParameter(argv[++i], mode_cfg_strings, ARTIFACT_SIZE);
    if (idx < 0) {
     Log_print("Invalid value for -pal-artif");
     return FALSE;
    }
    mode_pal = idx;
   } else a_m = TRUE;
  }

  else {
   if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-ntsc-artif none|ntsc-old|ntsc-new|ntsc-full");
    Log_print("\t                 Select video artifacts for NTSC");
    Log_print("\t-pal-artif none|pal-simple|pal-accu");
    Log_print("\t                 Select video artifacts for PAL");
   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  }
 }
 *argc = j;


 UpdateFromTVMode(Atari800_tv_mode);
 UpdateMode(ARTIFACT_NONE, FALSE);
 return TRUE;
}
