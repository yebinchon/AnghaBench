
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ transactionNumber; } ;
struct TYPE_12__ {TYPE_3__* initiatorProc; TYPE_1__ transactionId; } ;
typedef TYPE_2__ TransactionNode ;
struct TYPE_16__ {TYPE_3__* allProcs; } ;
struct TYPE_14__ {scalar_t__ transactionNumber; scalar_t__ initiatorNodeIdentifier; int transactionOriginator; } ;
struct TYPE_15__ {TYPE_4__ transactionId; } ;
struct TYPE_13__ {scalar_t__ pid; } ;
typedef TYPE_3__ PGPROC ;
typedef TYPE_4__ DistributedTransactionId ;
typedef TYPE_5__ BackendData ;


 int Assert (int) ;
 int GetBackendDataForProc (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ GetLocalGroupId () ;
 int IsInDistributedTransaction (TYPE_5__*) ;
 int MaxBackends ;
 TYPE_6__* ProcGlobal ;

__attribute__((used)) static bool
AssociateDistributedTransactionWithBackendProc(TransactionNode *transactionNode)
{
 int backendIndex = 0;

 for (backendIndex = 0; backendIndex < MaxBackends; ++backendIndex)
 {
  PGPROC *currentProc = &ProcGlobal->allProcs[backendIndex];
  BackendData currentBackendData;
  DistributedTransactionId *currentTransactionId = ((void*)0);


  if (currentProc->pid <= 0)
  {
   continue;
  }

  GetBackendDataForProc(currentProc, &currentBackendData);


  if (!IsInDistributedTransaction(&currentBackendData))
  {
   continue;
  }

  currentTransactionId = &currentBackendData.transactionId;

  if (currentTransactionId->transactionNumber !=
   transactionNode->transactionId.transactionNumber)
  {
   continue;
  }


  if (!currentTransactionId->transactionOriginator)
  {
   continue;
  }


  Assert(currentTransactionId->initiatorNodeIdentifier == GetLocalGroupId());

  transactionNode->initiatorProc = currentProc;

  return 1;
 }

 return 0;
}
