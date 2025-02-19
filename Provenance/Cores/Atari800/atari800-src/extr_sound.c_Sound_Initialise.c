
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freq; int sample_size; int frag_frames; } ;


 int FALSE ;
 int Log_print (char*,...) ;
 TYPE_1__ Sound_desired ;
 int Sound_enabled ;
 void* Sound_latency ;
 int TRUE ;
 void* Util_sscandec (char*) ;
 scalar_t__ strcmp (char*,char*) ;

int Sound_Initialise(int *argc, char *argv[])
{
 int i, j;
 int help_only = FALSE;

 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;
  int a_i = FALSE;

  if (strcmp(argv[i], "-sound") == 0)
   Sound_enabled = 1;
  else if (strcmp(argv[i], "-nosound") == 0)
   Sound_enabled = 0;
  else if (strcmp(argv[i], "-dsprate") == 0) {
   if (i_a)
    a_i = (Sound_desired.freq = Util_sscandec(argv[++i])) == -1;
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-audio16") == 0)
   Sound_desired.sample_size = 2;
  else if (strcmp(argv[i], "-audio8") == 0)
   Sound_desired.sample_size = 1;
  else if (strcmp(argv[i], "snd-fragsize") == 0) {
   if (i_a) {
    int val = Util_sscandec(argv[++i]);
    if (val == -1)
     a_i = TRUE;
    else
     Sound_desired.frag_frames = val;
   }
   else a_m = TRUE;
  }






  else {
   if (strcmp(argv[i], "-help") == 0) {
    help_only = TRUE;
    Log_print("\t-sound               Enable sound");
    Log_print("\t-nosound             Disable sound");
    Log_print("\t-dsprate <rate>      Set sound output frequency in Hz");
    Log_print("\t-audio16             Set sound output format to 16-bit");
    Log_print("\t-audio8              Set sound output format to 8-bit");
    Log_print("\t-snd-fragsize <num>  Set size of the hardware sound buffer (fragment size)");



   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  } else if (a_i) {
   Log_print("Invalid argument for '%s'", argv[--i]);
   return FALSE;
  }
 }
 *argc = j;

 if (help_only)
  Sound_enabled = FALSE;

 return TRUE;
}
