
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_READ_ONLY ;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regY ;
 scalar_t__ Devices_GetHostPath (int ) ;
 int Devices_RemoveDirectory (int ) ;
 int FALSE ;
 int Log_print (char*) ;
 scalar_t__ devbug ;
 int host_path ;

__attribute__((used)) static void Devices_H_RemoveDirectory(void)
{
 if (devbug)
  Log_print("RMDIR Command");
 CHECK_READ_ONLY;

 if (Devices_GetHostPath(FALSE) == 0)
  return;

 CPU_regY = Devices_RemoveDirectory(host_path);
 if (CPU_regY >= 128)
  CPU_SetN;
 else
  CPU_ClrN;
}
