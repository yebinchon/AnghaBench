
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int * setOperations; scalar_t__ jointree; int * rtable; } ;
struct TYPE_7__ {scalar_t__ rtekind; TYPE_3__* subquery; } ;
struct TYPE_6__ {scalar_t__ op; } ;
typedef TYPE_1__ SetOperationStmt ;
typedef TYPE_2__ RangeTblEntry ;
typedef TYPE_3__ Query ;
typedef int Node ;
typedef int List ;
typedef int Index ;


 int ExtractRangeTableIndexWalker (int *,int **) ;
 int * NIL ;
 scalar_t__ RTE_SUBQUERY ;
 scalar_t__ SETOP_UNION ;
 int linitial_int (int *) ;
 int list_length (int *) ;
 TYPE_2__* rt_fetch (int ,int *) ;

bool
ContainsUnionSubquery(Query *queryTree)
{
 List *rangeTableList = queryTree->rtable;
 Node *setOperations = queryTree->setOperations;
 List *joinTreeTableIndexList = NIL;
 Index subqueryRteIndex = 0;
 uint32 joiningRangeTableCount = 0;
 RangeTblEntry *rangeTableEntry = ((void*)0);
 Query *subqueryTree = ((void*)0);

 ExtractRangeTableIndexWalker((Node *) queryTree->jointree, &joinTreeTableIndexList);
 joiningRangeTableCount = list_length(joinTreeTableIndexList);


 if (joiningRangeTableCount > 1)
 {
  return 0;
 }


 if (joiningRangeTableCount == 0)
 {
  return 0;
 }

 subqueryRteIndex = linitial_int(joinTreeTableIndexList);
 rangeTableEntry = rt_fetch(subqueryRteIndex, rangeTableList);
 if (rangeTableEntry->rtekind != RTE_SUBQUERY)
 {
  return 0;
 }

 subqueryTree = rangeTableEntry->subquery;
 setOperations = subqueryTree->setOperations;
 if (setOperations != ((void*)0))
 {
  SetOperationStmt *setOperationStatement = (SetOperationStmt *) setOperations;





  if (setOperationStatement->op != SETOP_UNION)
  {
   return 0;
  }

  return 1;
 }

 return ContainsUnionSubquery(subqueryTree);
}
