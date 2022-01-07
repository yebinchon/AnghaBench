
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsUnderPostmaster ;
 int MaintenanceDaemonShmemInit ;
 int MaintenanceDaemonShmemSize () ;
 int RequestAddinShmemSpace (int ) ;
 int prev_shmem_startup_hook ;
 int shmem_startup_hook ;

void
InitializeMaintenanceDaemon(void)
{
 if (!IsUnderPostmaster)
 {
  RequestAddinShmemSpace(MaintenanceDaemonShmemSize());
 }

 prev_shmem_startup_hook = shmem_startup_hook;
 shmem_startup_hook = MaintenanceDaemonShmemInit;
}
