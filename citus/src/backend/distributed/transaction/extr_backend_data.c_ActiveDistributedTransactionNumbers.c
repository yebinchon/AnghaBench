
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_11__ {TYPE_2__* allProcs; } ;
struct TYPE_8__ {int transactionNumber; int transactionOriginator; } ;
struct TYPE_10__ {TYPE_1__ transactionId; } ;
struct TYPE_9__ {scalar_t__ pid; } ;
typedef TYPE_2__ PGPROC ;
typedef int List ;
typedef TYPE_3__ BackendData ;


 int GetBackendDataForProc (TYPE_2__*,TYPE_3__*) ;
 int IsInDistributedTransaction (TYPE_3__*) ;
 int MaxBackends ;
 int * NIL ;
 TYPE_4__* ProcGlobal ;
 int * lappend (int *,int *) ;
 scalar_t__ palloc0 (int) ;

List *
ActiveDistributedTransactionNumbers(void)
{
 List *activeTransactionNumberList = NIL;
 int curBackend = 0;


 for (curBackend = 0; curBackend < MaxBackends; curBackend++)
 {
  PGPROC *currentProc = &ProcGlobal->allProcs[curBackend];
  BackendData currentBackendData;
  uint64 *transactionNumber = ((void*)0);

  if (currentProc->pid == 0)
  {

   continue;
  }

  GetBackendDataForProc(currentProc, &currentBackendData);

  if (!IsInDistributedTransaction(&currentBackendData))
  {

   continue;
  }

  if (!currentBackendData.transactionId.transactionOriginator)
  {

   continue;
  }

  transactionNumber = (uint64 *) palloc0(sizeof(uint64));
  *transactionNumber = currentBackendData.transactionId.transactionNumber;

  activeTransactionNumberList = lappend(activeTransactionNumberList,
             transactionNumber);
 }

 return activeTransactionNumberList;
}
