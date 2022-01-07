
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int transactionVisited; } ;
typedef TYPE_1__ TransactionNode ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
ResetVisitedFields(HTAB *adjacencyList)
{
 HASH_SEQ_STATUS status;
 TransactionNode *resetNode = ((void*)0);


 hash_seq_init(&status, adjacencyList);

 while ((resetNode = (TransactionNode *) hash_seq_search(&status)) != 0)
 {
  resetNode->transactionVisited = 0;
 }
}
