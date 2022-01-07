
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int transactionVisited; } ;
typedef TYPE_1__ TransactionNode ;
struct TYPE_10__ {int currentStackDepth; TYPE_1__* transactionNode; } ;
typedef TYPE_2__ QueuedTransactionNode ;
typedef int List ;


 int Assert (int) ;
 int BuildDeadlockPathList (TYPE_2__*,TYPE_1__**,int **) ;
 int * NIL ;
 int PrependOutgoingNodesToQueue (TYPE_1__*,int const,int **) ;
 scalar_t__ linitial (int *) ;
 int * list_delete_first (int *) ;
 TYPE_1__** palloc0 (int) ;
 int pfree (TYPE_1__**) ;

__attribute__((used)) static bool
CheckDeadlockForTransactionNode(TransactionNode *startingTransactionNode,
        int maxStackDepth,
        List **deadlockPath)
{
 List *toBeVisitedNodes = NIL;
 const int rootStackDepth = 0;
 TransactionNode **transactionNodeStack =
  palloc0(maxStackDepth * sizeof(TransactionNode *));






 transactionNodeStack[rootStackDepth] = startingTransactionNode;

 PrependOutgoingNodesToQueue(startingTransactionNode, rootStackDepth,
        &toBeVisitedNodes);


 while (toBeVisitedNodes != NIL)
 {
  int currentStackDepth;
  QueuedTransactionNode *queuedTransactionNode =
   (QueuedTransactionNode *) linitial(toBeVisitedNodes);
  TransactionNode *currentTransactionNode = queuedTransactionNode->transactionNode;

  toBeVisitedNodes = list_delete_first(toBeVisitedNodes);


  if (currentTransactionNode == startingTransactionNode)
  {
   BuildDeadlockPathList(queuedTransactionNode, transactionNodeStack,
          deadlockPath);

   pfree(transactionNodeStack);
   return 1;
  }


  if (currentTransactionNode->transactionVisited)
  {
   continue;
  }

  currentTransactionNode->transactionVisited = 1;


  currentStackDepth = queuedTransactionNode->currentStackDepth;
  Assert(currentStackDepth < maxStackDepth);
  transactionNodeStack[currentStackDepth] = currentTransactionNode;

  PrependOutgoingNodesToQueue(currentTransactionNode, currentStackDepth,
         &toBeVisitedNodes);
 }

 pfree(transactionNodeStack);
 return 0;
}
