
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ hasSemiJoin; } ;
struct TYPE_9__ {scalar_t__ hasWindowFuncs; scalar_t__ jointree; } ;
typedef int * StringInfo ;
typedef TYPE_1__ Query ;
typedef TYPE_2__ PlannerRestrictionContext ;
typedef int Node ;
typedef int List ;


 int * DeferErrorIfUnsupportedClause (int *) ;
 scalar_t__ FindNodeCheck (int *,int ) ;
 int IsFunctionRTE ;
 int IsOuterJoinExpr ;
 scalar_t__ JoinTreeContainsSubquery (TYPE_1__*) ;
 int * NIL ;
 int * QualifierList (scalar_t__) ;
 scalar_t__ SafeToPushdownWindowFunction (TYPE_1__*,int **) ;
 scalar_t__ WhereOrHavingClauseContainsSubquery (TYPE_1__*) ;

bool
ShouldUseSubqueryPushDown(Query *originalQuery, Query *rewrittenQuery,
        PlannerRestrictionContext *plannerRestrictionContext)
{
 List *qualifierList = NIL;
 StringInfo errorMessage = ((void*)0);






 if (JoinTreeContainsSubquery(rewrittenQuery))
 {
  return 1;
 }







 if (WhereOrHavingClauseContainsSubquery(rewrittenQuery))
 {
  return 1;
 }
 if (plannerRestrictionContext->hasSemiJoin)
 {
  return 1;
 }






 if (FindNodeCheck((Node *) originalQuery, IsFunctionRTE))
 {
  return 1;
 }





 if (FindNodeCheck((Node *) originalQuery->jointree, IsOuterJoinExpr))
 {
  return 1;
 }







 if (FindNodeCheck((Node *) rewrittenQuery->jointree, IsOuterJoinExpr))
 {
  return 1;
 }





 qualifierList = QualifierList(rewrittenQuery->jointree);
 if (DeferErrorIfUnsupportedClause(qualifierList) != ((void*)0))
 {
  return 1;
 }


 if (originalQuery->hasWindowFuncs &&
  SafeToPushdownWindowFunction(originalQuery, &errorMessage))
 {
  return 1;
 }

 return 0;
}
