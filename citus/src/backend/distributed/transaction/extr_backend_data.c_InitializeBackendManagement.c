
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BackendManagementShmemInit ;
 int BackendManagementShmemSize () ;
 int IsUnderPostmaster ;
 int RequestAddinShmemSpace (int ) ;
 int prev_shmem_startup_hook ;
 int shmem_startup_hook ;

void
InitializeBackendManagement(void)
{

 if (!IsUnderPostmaster)
 {
  RequestAddinShmemSpace(BackendManagementShmemSize());
 }

 prev_shmem_startup_hook = shmem_startup_hook;
 shmem_startup_hook = BackendManagementShmemInit;
}
