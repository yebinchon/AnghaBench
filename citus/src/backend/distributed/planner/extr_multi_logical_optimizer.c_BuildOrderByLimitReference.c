
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int groupedByDisjointPartitionColumn; int hasDistinctOn; int groupClauseIsEmpty; int sortClauseIsEmpty; int hasOrderByAggregate; int canApproximate; } ;
typedef TYPE_1__ OrderByLimitReference ;
typedef int List ;


 int CanPushDownLimitApproximate (int *,int *) ;
 int HasOrderByAggregate (int *,int *) ;
 int * NIL ;

__attribute__((used)) static OrderByLimitReference
BuildOrderByLimitReference(bool hasDistinctOn, bool groupedByDisjointPartitionColumn,
         List *groupClause, List *sortClauseList, List *targetList)
{
 OrderByLimitReference limitOrderByReference;

 limitOrderByReference.groupedByDisjointPartitionColumn =
  groupedByDisjointPartitionColumn;
 limitOrderByReference.hasDistinctOn = hasDistinctOn;
 limitOrderByReference.groupClauseIsEmpty = (groupClause == NIL);
 limitOrderByReference.sortClauseIsEmpty = (sortClauseList == NIL);
 limitOrderByReference.canApproximate =
  CanPushDownLimitApproximate(sortClauseList, targetList);
 limitOrderByReference.hasOrderByAggregate =
  HasOrderByAggregate(sortClauseList, targetList);

 return limitOrderByReference;
}
