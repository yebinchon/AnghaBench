
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int canApproximate; int hasOrderByAggregate; scalar_t__ groupedByDisjointPartitionColumn; scalar_t__ groupClauseIsEmpty; int hasDistinctOn; } ;
typedef TYPE_1__ OrderByLimitReference ;
typedef int Node ;
typedef int List ;


 int * NIL ;
 int * copyObject (int *) ;
 int * list_concat (int *,int *) ;

__attribute__((used)) static List *
WorkerSortClauseList(Node *limitCount, List *groupClauseList, List *sortClauseList,
      OrderByLimitReference orderByLimitReference)
{
 List *workerSortClauseList = NIL;


 if (limitCount == ((void*)0) && !orderByLimitReference.hasDistinctOn)
 {
  return NIL;
 }

 sortClauseList = copyObject(sortClauseList);
 if (orderByLimitReference.groupClauseIsEmpty ||
  orderByLimitReference.groupedByDisjointPartitionColumn)
 {
  workerSortClauseList = sortClauseList;
 }
 else if (sortClauseList != NIL)
 {
  bool orderByNonAggregates = !orderByLimitReference.hasOrderByAggregate;
  bool canApproximate = orderByLimitReference.canApproximate;

  if (orderByNonAggregates)
  {
   workerSortClauseList = sortClauseList;
   workerSortClauseList = list_concat(workerSortClauseList, groupClauseList);
  }
  else if (canApproximate)
  {
   workerSortClauseList = sortClauseList;
  }
 }

 return workerSortClauseList;
}
