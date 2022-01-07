
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
typedef int LWLockMode ;


 int LWLockAcquire (int *,int ) ;
 TYPE_1__* backendManagementShmemData ;

void
LockBackendSharedMemory(LWLockMode lockMode)
{
 LWLockAcquire(&backendManagementShmemData->lock, lockMode);
}
