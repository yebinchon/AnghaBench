
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rtable; } ;
typedef int RecurringTuplesType ;
typedef TYPE_1__ Query ;


 scalar_t__ FindNodeCheckInRangeTableList (int ,int ) ;
 scalar_t__ HasEmptyJoinTree (TYPE_1__*) ;
 int IsDistributedTableRTE ;
 int IsRecurringRangeTable (int ,int *) ;
 int RECURRING_TUPLES_EMPTY_JOIN_TREE ;
 int RECURRING_TUPLES_INVALID ;

__attribute__((used)) static RecurringTuplesType
FromClauseRecurringTupleType(Query *queryTree)
{
 RecurringTuplesType recurType = RECURRING_TUPLES_INVALID;

 if (HasEmptyJoinTree(queryTree))
 {
  return RECURRING_TUPLES_EMPTY_JOIN_TREE;
 }

 if (FindNodeCheckInRangeTableList(queryTree->rtable, IsDistributedTableRTE))
 {
  return RECURRING_TUPLES_INVALID;
 }





 IsRecurringRangeTable(queryTree->rtable, &recurType);

 return recurType;
}
