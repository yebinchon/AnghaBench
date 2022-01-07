
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UBYTE ;


 int FALSE ;
 int Log_print (char*,...) ;
 int Screen_EntireDirty () ;
 int Screen_HEIGHT ;
 int Screen_SetScreenshotFilenamePattern (char*) ;
 int Screen_WIDTH ;
 int * Screen_atari ;
 int * Screen_atari1 ;
 int * Screen_atari2 ;
 int * Screen_atari_b ;
 int * Screen_dirty ;
 int Screen_show_atari_speed ;
 int TRUE ;
 scalar_t__ Util_malloc (int) ;
 int memset (int *,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;

int Screen_Initialise(int *argc, char *argv[])
{
 int i;
 int j;
 int help_only = FALSE;

 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;

  if (strcmp(argv[i], "-screenshots") == 0) {
   if (i_a)
    Screen_SetScreenshotFilenamePattern(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-showspeed") == 0) {
   Screen_show_atari_speed = TRUE;
  }
  else {
   if (strcmp(argv[i], "-help") == 0) {
    help_only = TRUE;
    Log_print("\t-screenshots <p> Set filename pattern for screenshots");
    Log_print("\t-showspeed       Show percentage of actual speed");
   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  }
 }
 *argc = j;


 if (help_only)
  return TRUE;

 if (Screen_atari == ((void*)0)) {
  Screen_atari = (ULONG *) Util_malloc(Screen_HEIGHT * Screen_WIDTH);

  memset(Screen_atari, 0, Screen_HEIGHT * Screen_WIDTH);
 }

 return TRUE;
}
