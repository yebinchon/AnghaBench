
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t pgprocno; } ;
struct TYPE_3__ {int * backends; } ;


 int Assert (int *) ;
 int LW_EXCLUSIVE ;
 int LockBackendSharedMemory (int ) ;
 int * MyBackendData ;
 TYPE_2__* MyProc ;
 int UnSetDistributedTransactionId () ;
 int UnlockBackendSharedMemory () ;
 TYPE_1__* backendManagementShmemData ;

void
InitializeBackendData(void)
{
 if (MyBackendData != ((void*)0))
 {





  return;
 }

 MyBackendData = &backendManagementShmemData->backends[MyProc->pgprocno];

 Assert(MyBackendData);

 LockBackendSharedMemory(LW_EXCLUSIVE);


 UnSetDistributedTransactionId();

 UnlockBackendSharedMemory();
}
