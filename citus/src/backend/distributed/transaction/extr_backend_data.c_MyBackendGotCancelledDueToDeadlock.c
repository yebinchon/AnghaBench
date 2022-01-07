
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cancelledDueToDeadlock; int mutex; } ;


 scalar_t__ IsInDistributedTransaction (TYPE_1__*) ;
 TYPE_1__* MyBackendData ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

bool
MyBackendGotCancelledDueToDeadlock(void)
{
 bool cancelledDueToDeadlock = 0;


 if (!MyBackendData)
 {
  return 0;
 }

 SpinLockAcquire(&MyBackendData->mutex);

 if (IsInDistributedTransaction(MyBackendData))
 {
  cancelledDueToDeadlock = MyBackendData->cancelledDueToDeadlock;
 }

 SpinLockRelease(&MyBackendData->mutex);

 return cancelledDueToDeadlock;
}
