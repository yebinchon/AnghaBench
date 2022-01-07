
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_READ_ONLY ;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regY ;
 scalar_t__ Devices_GetHostPath (int ) ;
 scalar_t__ Devices_MakeDirectory (int ) ;
 int FALSE ;
 int Log_print (char*) ;
 scalar_t__ devbug ;
 int host_path ;

__attribute__((used)) static void Devices_H_MakeDirectory(void)
{
 if (devbug)
  Log_print("MKDIR Command");
 CHECK_READ_ONLY;

 if (Devices_GetHostPath(FALSE) == 0)
  return;

 if (Devices_MakeDirectory(host_path)) {
  CPU_regY = 1;
  CPU_ClrN;
 }
 else {
  CPU_regY = 144;
  CPU_SetN;
 }
}
