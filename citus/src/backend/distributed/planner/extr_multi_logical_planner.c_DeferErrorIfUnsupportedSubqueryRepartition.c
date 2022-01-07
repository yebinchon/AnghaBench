
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rtable; scalar_t__ jointree; scalar_t__ hasSubLinks; int * limitOffset; int * limitCount; int * sortClause; int * groupClause; int hasAggs; } ;
struct TYPE_5__ {scalar_t__ rtekind; TYPE_2__* subquery; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int Node ;
typedef int List ;
typedef int DeferredErrorMessage ;


 int Assert (int) ;
 int * DeferredError (int ,char*,char*,int *) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ExtractRangeTableIndexWalker (int *,int **) ;
 int * NIL ;
 scalar_t__ RTE_RELATION ;
 scalar_t__ RTE_SUBQUERY ;
 int linitial_int (int *) ;
 int list_length (int *) ;
 TYPE_1__* rt_fetch (int,int ) ;

DeferredErrorMessage *
DeferErrorIfUnsupportedSubqueryRepartition(Query *subqueryTree)
{
 char *errorDetail = ((void*)0);
 bool preconditionsSatisfied = 1;
 List *joinTreeTableIndexList = NIL;
 int rangeTableIndex = 0;
 RangeTblEntry *rangeTableEntry = ((void*)0);
 Query *innerSubquery = ((void*)0);

 if (!subqueryTree->hasAggs)
 {
  preconditionsSatisfied = 0;
  errorDetail = "Subqueries without aggregates are not supported yet";
 }

 if (subqueryTree->groupClause == NIL)
 {
  preconditionsSatisfied = 0;
  errorDetail = "Subqueries without group by clause are not supported yet";
 }

 if (subqueryTree->sortClause != ((void*)0))
 {
  preconditionsSatisfied = 0;
  errorDetail = "Subqueries with order by clause are not supported yet";
 }

 if (subqueryTree->limitCount != ((void*)0))
 {
  preconditionsSatisfied = 0;
  errorDetail = "Subqueries with limit are not supported yet";
 }

 if (subqueryTree->limitOffset != ((void*)0))
 {
  preconditionsSatisfied = 0;
  errorDetail = "Subqueries with offset are not supported yet";
 }

 if (subqueryTree->hasSubLinks)
 {
  preconditionsSatisfied = 0;
  errorDetail = "Subqueries other than from-clause subqueries are unsupported";
 }


 if (!preconditionsSatisfied)
 {
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "cannot perform distributed planning on this query",
        errorDetail, ((void*)0));
 }





 ExtractRangeTableIndexWalker((Node *) subqueryTree->jointree,
         &joinTreeTableIndexList);
 Assert(list_length(joinTreeTableIndexList) == 1);


 rangeTableIndex = linitial_int(joinTreeTableIndexList);
 rangeTableEntry = rt_fetch(rangeTableIndex, subqueryTree->rtable);
 if (rangeTableEntry->rtekind == RTE_RELATION)
 {
  return ((void*)0);
 }

 Assert(rangeTableEntry->rtekind == RTE_SUBQUERY);
 innerSubquery = rangeTableEntry->subquery;


 return DeferErrorIfUnsupportedSubqueryRepartition(innerSubquery);
}
