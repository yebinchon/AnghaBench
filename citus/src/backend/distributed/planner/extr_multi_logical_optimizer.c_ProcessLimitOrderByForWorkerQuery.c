
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nextSortGroupRefIndex; int workerSortClauseList; int workerLimitCount; } ;
struct TYPE_5__ {int targetEntryList; int targetProjectionNumber; } ;
typedef TYPE_1__ QueryTargetList ;
typedef TYPE_2__ QueryOrderByLimit ;
typedef int OrderByLimitReference ;
typedef int Node ;
typedef int List ;


 int * GenerateNewTargetEntriesForSortClauses (int *,int ,int *,int ) ;
 int * NIL ;
 int WorkerLimitCount (int *,int *,int ) ;
 int WorkerSortClauseList (int *,int *,int *,int ) ;
 int list_concat (int ,int *) ;

__attribute__((used)) static void
ProcessLimitOrderByForWorkerQuery(OrderByLimitReference orderByLimitReference,
          Node *originalLimitCount, Node *limitOffset,
          List *sortClauseList, List *groupClauseList,
          List *originalTargetList,
          QueryOrderByLimit *queryOrderByLimit,
          QueryTargetList *queryTargetList)
{
 List *newTargetEntryListForSortClauses = NIL;

 queryOrderByLimit->workerLimitCount =
  WorkerLimitCount(originalLimitCount, limitOffset, orderByLimitReference);

 queryOrderByLimit->workerSortClauseList =
  WorkerSortClauseList(originalLimitCount,
        groupClauseList,
        sortClauseList,
        orderByLimitReference);





 newTargetEntryListForSortClauses =
  GenerateNewTargetEntriesForSortClauses(originalTargetList,
              queryOrderByLimit->workerSortClauseList,
              &(queryTargetList->targetProjectionNumber),
              queryOrderByLimit->nextSortGroupRefIndex);

 queryTargetList->targetEntryList =
  list_concat(queryTargetList->targetEntryList, newTargetEntryListForSortClauses);
}
