
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regY ;
 scalar_t__ Devices_GetHostPath (int ) ;
 char** Devices_h_current_dir ;
 int FALSE ;
 int Log_print (char*) ;
 char Util_DIR_SEP_CHAR ;
 int Util_direxists (int ) ;
 char* Util_stpcpy (char*,char*) ;
 char* atari_path ;
 scalar_t__ devbug ;
 size_t h_devnum ;
 int host_path ;

__attribute__((used)) static void Devices_H_ChangeDirectory(void)
{
 if (devbug)
  Log_print("CD Command");

 if (Devices_GetHostPath(FALSE) == 0)
  return;

 if (!Util_direxists(host_path)) {
  CPU_regY = 150;
  CPU_SetN;
  return;
 }

 if (atari_path[0] == '\0')
  Devices_h_current_dir[h_devnum][0] = '\0';
 else {
  char *p = Util_stpcpy(Devices_h_current_dir[h_devnum], atari_path);
  p[0] = Util_DIR_SEP_CHAR;
  p[1] = '\0';
 }

 CPU_regY = 1;
 CPU_ClrN;
}
