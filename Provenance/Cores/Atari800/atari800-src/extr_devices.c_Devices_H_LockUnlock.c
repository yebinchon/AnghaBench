
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_READ_ONLY ;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regY ;
 scalar_t__ Devices_GetHostPath (int ) ;
 int Devices_OpenDir (int ) ;
 scalar_t__ Devices_ReadDir (int ,int *,int *,int *,int *,int *) ;
 scalar_t__ Devices_SetReadOnly (int ,int) ;
 int FALSE ;
 int Log_print (char*,int,int) ;
 scalar_t__ devbug ;
 int host_path ;

__attribute__((used)) static void Devices_H_LockUnlock(int readonly)
{
 int num_changed = 0;
 int num_failed = 0;

 CHECK_READ_ONLY;

 if (Devices_GetHostPath(FALSE) == 0)
  return;
 {
  if (Devices_SetReadOnly(host_path, readonly))
   num_changed++;
  else
   num_failed++;
 }

 if (devbug)
  Log_print("%d changed, %d failed",
         num_changed, num_failed);

 if (num_failed != 0 || num_changed == 0) {
  CPU_regY = 170;
  CPU_SetN;
 }
 else {
  CPU_regY = 1;
  CPU_ClrN;
 }
}
