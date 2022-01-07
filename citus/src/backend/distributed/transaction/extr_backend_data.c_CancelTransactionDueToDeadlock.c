
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* backends; } ;
struct TYPE_6__ {scalar_t__ transactionNumber; } ;
struct TYPE_8__ {int cancelledDueToDeadlock; int mutex; TYPE_1__ transactionId; } ;
struct TYPE_7__ {size_t pgprocno; int pid; } ;
typedef TYPE_2__ PGPROC ;
typedef TYPE_3__ BackendData ;


 int SIGINT ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WARNING ;
 TYPE_4__* backendManagementShmemData ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ kill (int ,int ) ;

void
CancelTransactionDueToDeadlock(PGPROC *proc)
{
 BackendData *backendData = &backendManagementShmemData->backends[proc->pgprocno];


 if (!backendData)
 {
  return;
 }

 SpinLockAcquire(&backendData->mutex);


 if (backendData->transactionId.transactionNumber != 0)
 {
  backendData->cancelledDueToDeadlock = 1;
  SpinLockRelease(&backendData->mutex);

  if (kill(proc->pid, SIGINT) != 0)
  {
   ereport(WARNING,
     (errmsg("attempted to cancel this backend (pid: %d) to resolve a "
       "distributed deadlock but the backend could not "
       "be cancelled", proc->pid)));
  }
 }
 else
 {
  SpinLockRelease(&backendData->mutex);
 }
}
