
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ jointree; scalar_t__ hasWindowFuncs; scalar_t__ hasSubLinks; int * rtable; } ;
struct TYPE_5__ {scalar_t__ rtekind; TYPE_2__* subquery; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int Node ;
typedef int List ;


 int ExtractRangeTableIndexWalker (int *,int **) ;
 scalar_t__ RTE_RELATION ;
 scalar_t__ RTE_SUBQUERY ;
 int linitial_int (int *) ;
 int list_length (int *) ;
 TYPE_1__* rt_fetch (int,int *) ;

bool
SingleRelationRepartitionSubquery(Query *queryTree)
{
 List *rangeTableIndexList = ((void*)0);
 RangeTblEntry *rangeTableEntry = ((void*)0);
 List *rangeTableList = queryTree->rtable;
 int rangeTableIndex = 0;


 if (queryTree->hasSubLinks)
 {
  return 0;
 }


 if (queryTree->hasWindowFuncs)
 {
  return 0;
 }






 ExtractRangeTableIndexWalker((Node *) queryTree->jointree,
         &rangeTableIndexList);
 if (list_length(rangeTableIndexList) != 1)
 {
  return 0;
 }

 rangeTableIndex = linitial_int(rangeTableIndexList);
 rangeTableEntry = rt_fetch(rangeTableIndex, rangeTableList);
 if (rangeTableEntry->rtekind == RTE_RELATION)
 {
  return 1;
 }
 else if (rangeTableEntry->rtekind == RTE_SUBQUERY)
 {
  Query *subqueryTree = rangeTableEntry->subquery;

  return SingleRelationRepartitionSubquery(subqueryTree);
 }

 return 0;
}
