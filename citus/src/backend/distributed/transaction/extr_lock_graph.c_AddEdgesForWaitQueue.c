
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int WaitGraph ;
struct TYPE_15__ {scalar_t__ next; } ;
struct TYPE_17__ {int size; TYPE_1__ links; } ;
struct TYPE_20__ {TYPE_3__ waitProcs; } ;
struct TYPE_19__ {int* conflictTab; } ;
struct TYPE_16__ {scalar_t__ next; } ;
struct TYPE_18__ {size_t waitLockMode; TYPE_2__ links; TYPE_6__* waitLock; } ;
typedef TYPE_3__ PROC_QUEUE ;
typedef int PROCStack ;
typedef TYPE_4__ PGPROC ;
typedef TYPE_5__* LockMethod ;
typedef TYPE_6__ LOCK ;


 int AddWaitEdge (int *,TYPE_4__*,TYPE_4__*,int *) ;
 TYPE_5__* GetLocksMethodTable (TYPE_6__*) ;
 scalar_t__ IsConflictingLockMask (int,int) ;
 int IsProcessWaitingForSafeOperations (TYPE_4__*) ;
 int IsSameLockGroup (TYPE_4__*,TYPE_4__*) ;
 int LOCKBIT_ON (size_t) ;

__attribute__((used)) static void
AddEdgesForWaitQueue(WaitGraph *waitGraph, PGPROC *waitingProc, PROCStack *remaining)
{

 LOCK *waitLock = waitingProc->waitLock;


 LockMethod lockMethodTable = GetLocksMethodTable(waitLock);
 int conflictMask = lockMethodTable->conflictTab[waitingProc->waitLockMode];


 PROC_QUEUE *waitQueue = &(waitLock->waitProcs);
 int queueSize = waitQueue->size;
 PGPROC *currentProc = (PGPROC *) waitQueue->links.next;





 while (queueSize-- > 0 && currentProc != waitingProc)
 {
  int awaitMask = LOCKBIT_ON(currentProc->waitLockMode);





  if (!IsSameLockGroup(waitingProc, currentProc) &&
   IsConflictingLockMask(awaitMask, conflictMask) &&
   !IsProcessWaitingForSafeOperations(currentProc))
  {
   AddWaitEdge(waitGraph, waitingProc, currentProc, remaining);
  }

  currentProc = (PGPROC *) currentProc->links.next;
 }
}
