
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
typedef int info ;
struct TYPE_12__ {int edgeCount; TYPE_2__* edges; } ;
typedef TYPE_1__ WaitGraph ;
struct TYPE_13__ {int blockingTransactionStamp; int blockingTransactionNum; int blockingNodeId; int waitingTransactionStamp; int waitingTransactionNum; int waitingNodeId; } ;
typedef TYPE_2__ WaitEdge ;
struct TYPE_14__ {int waitsFor; } ;
typedef TYPE_3__ TransactionNode ;
struct TYPE_16__ {int member_1; int member_3; int member_2; int member_0; } ;
struct TYPE_15__ {int keysize; int entrysize; int hcxt; int match; int hash; } ;
typedef int HTAB ;
typedef TYPE_4__ HASHCTL ;
typedef TYPE_5__ DistributedTransactionId ;


 int CurrentMemoryContext ;
 int DistributedTransactionIdCompare ;
 int DistributedTransactionIdHash ;
 TYPE_3__* GetOrCreateTransactionNode (int *,TYPE_5__*) ;
 int HASH_COMPARE ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 int * hash_create (char*,int,TYPE_4__*,int) ;
 int lappend (int ,TYPE_3__*) ;
 int memset (TYPE_4__*,int ,int) ;

extern HTAB *
BuildAdjacencyListsForWaitGraph(WaitGraph *waitGraph)
{
 HASHCTL info;
 uint32 hashFlags = 0;
 HTAB *adjacencyList = ((void*)0);
 int edgeIndex = 0;
 int edgeCount = waitGraph->edgeCount;

 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(DistributedTransactionId);
 info.entrysize = sizeof(TransactionNode);
 info.hash = DistributedTransactionIdHash;
 info.match = DistributedTransactionIdCompare;
 info.hcxt = CurrentMemoryContext;
 hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT | HASH_COMPARE);

 adjacencyList = hash_create("distributed deadlock detection", 64, &info, hashFlags);

 for (edgeIndex = 0; edgeIndex < edgeCount; edgeIndex++)
 {
  WaitEdge *edge = &waitGraph->edges[edgeIndex];
  TransactionNode *waitingTransaction = ((void*)0);
  TransactionNode *blockingTransaction = ((void*)0);
  bool transactionOriginator = 0;

  DistributedTransactionId waitingId = {
   edge->waitingNodeId,
   transactionOriginator,
   edge->waitingTransactionNum,
   edge->waitingTransactionStamp
  };

  DistributedTransactionId blockingId = {
   edge->blockingNodeId,
   transactionOriginator,
   edge->blockingTransactionNum,
   edge->blockingTransactionStamp
  };

  waitingTransaction =
   GetOrCreateTransactionNode(adjacencyList, &waitingId);
  blockingTransaction =
   GetOrCreateTransactionNode(adjacencyList, &blockingId);

  waitingTransaction->waitsFor = lappend(waitingTransaction->waitsFor,
              blockingTransaction);
 }

 return adjacencyList;
}
