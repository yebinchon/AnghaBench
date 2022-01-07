
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int TransactionId ;
typedef int Task ;
typedef int List ;


 int GetMyProcLocalTransactionId () ;
 int * LeftRotateList (int *,int) ;
 int list_length (int *) ;

List *
RoundRobinReorder(Task *task, List *placementList)
{
 TransactionId transactionId = GetMyProcLocalTransactionId();
 uint32 activePlacementCount = list_length(placementList);
 uint32 roundRobinIndex = (transactionId % activePlacementCount);

 placementList = LeftRotateList(placementList, roundRobinIndex);

 return placementList;
}
