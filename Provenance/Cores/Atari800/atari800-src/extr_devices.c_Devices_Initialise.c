
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_H_Init () ;
 int * Devices_atari_h_dir ;
 int Devices_h_exe_path ;
 int Devices_h_read_only ;
 int FALSE ;
 int FILENAME_MAX ;
 int Log_print (char*,...) ;
 int TRUE ;
 int Util_strlcpy (int ,char*,int ) ;
 int devbug ;
 scalar_t__ strcmp (char*,char*) ;

int Devices_Initialise(int *argc, char *argv[])
{
 int i;
 int j;
 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;

  if (strcmp(argv[i], "-H1") == 0) {
   if (i_a)
    Util_strlcpy(Devices_atari_h_dir[0], argv[++i], FILENAME_MAX);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-H2") == 0) {
   if (i_a)
    Util_strlcpy(Devices_atari_h_dir[1], argv[++i], FILENAME_MAX);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-H3") == 0) {
   if (i_a)
    Util_strlcpy(Devices_atari_h_dir[2], argv[++i], FILENAME_MAX);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-H4") == 0) {
   if (i_a)
    Util_strlcpy(Devices_atari_h_dir[3], argv[++i], FILENAME_MAX);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-Hpath") == 0) {
   if (i_a)
    Util_strlcpy(Devices_h_exe_path, argv[++i], FILENAME_MAX);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-hreadonly") == 0)
   Devices_h_read_only = TRUE;
  else if (strcmp(argv[i], "-hreadwrite") == 0)
   Devices_h_read_only = FALSE;
  else if (strcmp(argv[i], "-devbug") == 0)
   devbug = TRUE;
  else {
   if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-H1 <path>       Set path for H1: device");
    Log_print("\t-H2 <path>       Set path for H2: device");
    Log_print("\t-H3 <path>       Set path for H3: device");
    Log_print("\t-H4 <path>       Set path for H4: device");
    Log_print("\t-Hpath <path>    Set path for Atari executables on the H: device");
    Log_print("\t-hreadonly       Enable read-only mode for H: device");
    Log_print("\t-hreadwrite      Disable read-only mode for H: device");
    Log_print("\t-devbug          Debugging messages for H: and P: devices");
   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  }
 }
 *argc = j;
 Devices_H_Init();

 return TRUE;
}
