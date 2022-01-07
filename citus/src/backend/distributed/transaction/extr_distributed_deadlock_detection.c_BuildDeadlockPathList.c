
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionNode ;
struct TYPE_3__ {int currentStackDepth; } ;
typedef TYPE_1__ QueuedTransactionNode ;
typedef int List ;


 int * NIL ;
 int * lappend (int *,int *) ;

__attribute__((used)) static void
BuildDeadlockPathList(QueuedTransactionNode *cycledTransactionNode,
       TransactionNode **transactionNodeStack,
       List **deadlockPath)
{
 int deadlockStackDepth = cycledTransactionNode->currentStackDepth;
 int stackIndex = 0;

 *deadlockPath = NIL;

 for (stackIndex = 0; stackIndex < deadlockStackDepth; stackIndex++)
 {
  *deadlockPath = lappend(*deadlockPath, transactionNodeStack[stackIndex]);
 }
}
