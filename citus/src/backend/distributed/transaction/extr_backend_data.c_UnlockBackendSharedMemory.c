
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int LWLockRelease (int *) ;
 TYPE_1__* backendManagementShmemData ;

void
UnlockBackendSharedMemory(void)
{
 LWLockRelease(&backendManagementShmemData->lock);
}
