
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * initiatorProc; int waitsFor; } ;
typedef TYPE_1__ TransactionNode ;
typedef int HTAB ;
typedef int DistributedTransactionId ;


 int HASH_ENTER ;
 int NIL ;
 scalar_t__ hash_search (int *,int *,int ,int*) ;

__attribute__((used)) static TransactionNode *
GetOrCreateTransactionNode(HTAB *adjacencyList, DistributedTransactionId *transactionId)
{
 TransactionNode *transactionNode = ((void*)0);
 bool found = 0;

 transactionNode = (TransactionNode *) hash_search(adjacencyList, transactionId,
               HASH_ENTER, &found);
 if (!found)
 {
  transactionNode->waitsFor = NIL;
  transactionNode->initiatorProc = ((void*)0);
 }

 return transactionNode;
}
