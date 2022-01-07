
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rtekind; int * subquery; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef int Query ;
typedef int PlannerRestrictionContext ;
typedef int MultiNode ;
typedef int List ;
typedef int DeferredErrorMessage ;


 int Assert (int) ;
 int * DeferErrorIfQueryNotSupported (int *) ;
 int * DeferErrorIfUnsupportedSubqueryPushdown (int *,int *) ;
 int * DeferErrorIfUnsupportedSubqueryRepartition (int *) ;
 int ERROR ;
 int * MultiNodeTree (int *) ;
 scalar_t__ RTE_SUBQUERY ;
 int RaiseDeferredError (int *,int ) ;
 int RaiseDeferredErrorInternal (int *,int ) ;
 int SingleRelationRepartitionSubquery (int *) ;
 int * SubqueryEntryList (int *) ;
 int * SubqueryPushdownMultiNodeTree (int *) ;
 scalar_t__ linitial (int *) ;

MultiNode *
SubqueryMultiNodeTree(Query *originalQuery, Query *queryTree,
       PlannerRestrictionContext *plannerRestrictionContext)
{
 MultiNode *multiQueryNode = ((void*)0);
 DeferredErrorMessage *subqueryPushdownError = ((void*)0);
 DeferredErrorMessage *unsupportedQueryError = ((void*)0);





 unsupportedQueryError = DeferErrorIfQueryNotSupported(originalQuery);
 if (unsupportedQueryError != ((void*)0))
 {
  RaiseDeferredError(unsupportedQueryError, ERROR);
 }






 subqueryPushdownError = DeferErrorIfUnsupportedSubqueryPushdown(originalQuery,
                 plannerRestrictionContext);
 if (!subqueryPushdownError)
 {
  multiQueryNode = SubqueryPushdownMultiNodeTree(originalQuery);
 }
 else if (subqueryPushdownError)
 {
  bool singleRelationRepartitionSubquery = 0;
  RangeTblEntry *subqueryRangeTableEntry = ((void*)0);
  Query *subqueryTree = ((void*)0);
  DeferredErrorMessage *repartitionQueryError = ((void*)0);
  List *subqueryEntryList = ((void*)0);





  singleRelationRepartitionSubquery =
   SingleRelationRepartitionSubquery(originalQuery);
  if (!singleRelationRepartitionSubquery)
  {
   RaiseDeferredErrorInternal(subqueryPushdownError, ERROR);
  }

  subqueryEntryList = SubqueryEntryList(queryTree);
  subqueryRangeTableEntry = (RangeTblEntry *) linitial(subqueryEntryList);
  Assert(subqueryRangeTableEntry->rtekind == RTE_SUBQUERY);

  subqueryTree = subqueryRangeTableEntry->subquery;

  repartitionQueryError = DeferErrorIfUnsupportedSubqueryRepartition(subqueryTree);
  if (repartitionQueryError)
  {
   RaiseDeferredErrorInternal(repartitionQueryError, ERROR);
  }


  multiQueryNode = MultiNodeTree(queryTree);
 }

 Assert(multiQueryNode != ((void*)0));

 return multiQueryNode;
}
