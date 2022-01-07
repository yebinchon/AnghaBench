
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_READ_ONLY ;
 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regY ;
 scalar_t__ Devices_GetHostPath (int) ;
 int Devices_OpenDir (int ) ;
 scalar_t__ Devices_ReadDir (int ,int *,int *,int*,int *,int *) ;
 int FALSE ;
 int Log_print (char*,...) ;
 scalar_t__ Util_unlink (int ) ;
 scalar_t__ devbug ;
 int host_path ;

__attribute__((used)) static void Devices_H_Delete(void)
{
 int num_deleted = 0;
 int num_failed = 0;
 int num_locked = 0;
 int readonly = FALSE;

 if (devbug)
  Log_print("DELETE Command");
 CHECK_READ_ONLY;

 if (Devices_GetHostPath(FALSE) == 0)
  return;
 {




  if (readonly)
   num_locked++;
  else
   if (Util_unlink(host_path) == 0)
    num_deleted++;
   else
    num_failed++;
 }

 if (devbug)
  Log_print("%d deleted, %d failed, %d locked",
         num_deleted, num_failed, num_locked);

 if (num_locked) {
  CPU_regY = 167;
  CPU_SetN;
 }
 else if (num_failed != 0 || num_deleted == 0) {
  CPU_regY = 170;
  CPU_SetN;
 }
 else {
  CPU_regY = 1;
  CPU_ClrN;
 }
}
