
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int initiatorNodeIdentifier; int transactionOriginator; } ;
struct TYPE_4__ {int mutex; TYPE_1__ citusBackend; } ;


 int GetLocalGroupId () ;
 TYPE_2__* MyBackendData ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
MarkCitusInitiatedCoordinatorBackend(void)
{




 int localGroupId = GetLocalGroupId();

 SpinLockAcquire(&MyBackendData->mutex);

 MyBackendData->citusBackend.initiatorNodeIdentifier = localGroupId;
 MyBackendData->citusBackend.transactionOriginator = 1;

 SpinLockRelease(&MyBackendData->mutex);
}
