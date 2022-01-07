
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int * anchorAttributeEquivalences; void* anchorRelationRestrictionList; TYPE_3__* subqueryPlannerRestriction; int * subquery; } ;
struct TYPE_14__ {TYPE_1__* relationRestrictionContext; } ;
struct TYPE_13__ {scalar_t__ rtekind; int * subquery; } ;
struct TYPE_12__ {void* relationRestrictionList; } ;
typedef TYPE_1__ RelationRestrictionContext ;
typedef TYPE_2__ RangeTblEntry ;
typedef int Query ;
typedef TYPE_3__ PlannerRestrictionContext ;
typedef int List ;
typedef TYPE_4__ ColocatedJoinChecker ;


 TYPE_2__* AnchorRte (int *) ;
 TYPE_3__* FilterPlannerRestrictionForQuery (TYPE_3__*,int *) ;
 int * GenerateAllAttributeEquivalences (TYPE_3__*) ;
 void* NIL ;
 scalar_t__ RTE_RELATION ;
 scalar_t__ RTE_SUBQUERY ;
 int * WrapRteRelationIntoSubquery (TYPE_2__*) ;
 int pg_unreachable () ;

ColocatedJoinChecker
CreateColocatedJoinChecker(Query *subquery, PlannerRestrictionContext *restrictionContext)
{
 ColocatedJoinChecker colocatedJoinChecker;

 RangeTblEntry *anchorRangeTblEntry = ((void*)0);
 Query *anchorSubquery = ((void*)0);
 PlannerRestrictionContext *anchorPlannerRestrictionContext = ((void*)0);
 RelationRestrictionContext *anchorRelationRestrictionContext = ((void*)0);
 List *anchorRestrictionEquivalences = NIL;


 anchorRangeTblEntry = AnchorRte(subquery);
 if (anchorRangeTblEntry == ((void*)0))
 {
  colocatedJoinChecker.anchorRelationRestrictionList = NIL;

  return colocatedJoinChecker;
 }

 if (anchorRangeTblEntry->rtekind == RTE_RELATION)
 {






  anchorSubquery = WrapRteRelationIntoSubquery(anchorRangeTblEntry);
 }
 else if (anchorRangeTblEntry->rtekind == RTE_SUBQUERY)
 {
  anchorSubquery = anchorRangeTblEntry->subquery;
 }
 else
 {

  pg_unreachable();
 }

 anchorPlannerRestrictionContext =
  FilterPlannerRestrictionForQuery(restrictionContext, anchorSubquery);
 anchorRelationRestrictionContext =
  anchorPlannerRestrictionContext->relationRestrictionContext;
 anchorRestrictionEquivalences =
  GenerateAllAttributeEquivalences(anchorPlannerRestrictionContext);


 colocatedJoinChecker.subquery = subquery;
 colocatedJoinChecker.subqueryPlannerRestriction = restrictionContext;

 colocatedJoinChecker.anchorRelationRestrictionList =
  anchorRelationRestrictionContext->relationRestrictionList;
 colocatedJoinChecker.anchorAttributeEquivalences = anchorRestrictionEquivalences;

 return colocatedJoinChecker;
}
