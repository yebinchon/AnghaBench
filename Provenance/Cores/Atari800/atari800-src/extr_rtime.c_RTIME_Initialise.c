
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int Log_print (char*) ;
 int RTIME_enabled ;
 int TRUE ;
 scalar_t__ strcmp (char*,char*) ;

int RTIME_Initialise(int *argc, char *argv[])
{
 int i;
 int j;
 for (i = j = 1; i < *argc; i++) {
  if (strcmp(argv[i], "-rtime") == 0)
   RTIME_enabled = TRUE;
  else if (strcmp(argv[i], "-nortime") == 0)
   RTIME_enabled = FALSE;
  else {
   if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-rtime           Enable R-Time 8 emulation");
    Log_print("\t-nortime         Disable R-Time 8 emulation");
   }
   argv[j++] = argv[i];
  }
 }
 *argc = j;

 return TRUE;
}
