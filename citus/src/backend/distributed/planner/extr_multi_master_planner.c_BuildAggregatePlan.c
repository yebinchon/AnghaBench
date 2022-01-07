
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ plan_rows; scalar_t__ total_cost; scalar_t__ startup_cost; } ;
struct TYPE_11__ {TYPE_1__ plan; } ;
struct TYPE_10__ {int havingQual; int * targetList; int * groupClause; scalar_t__ hasAggs; } ;
typedef TYPE_2__ Query ;
typedef int PlannerInfo ;
typedef int Plan ;
typedef int Node ;
typedef int List ;
typedef int AggStrategy ;
typedef int AggClauseCosts ;
typedef TYPE_3__ Agg ;


 int AGGSPLIT_SIMPLE ;
 int AGG_HASHED ;
 int AGG_PLAIN ;
 int AGG_SORTED ;
 int Assert (int) ;
 int ERROR ;
 int HasDistinctAggregate (TYPE_2__*) ;
 int * SS_process_sublinks (int *,int ,int) ;
 int * SS_replace_correlation_vars (int *,int *) ;
 scalar_t__ UseGroupAggregateWithHLL (TYPE_2__*) ;
 int enable_hashagg ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*,char*) ;
 int errmsg (char*) ;
 int get_agg_clause_costs (int *,int *,int ,int *) ;
 int grouping_is_hashable (int *) ;
 int grouping_is_sortable (int *) ;
 scalar_t__ list_length (int *) ;
 TYPE_3__* makeAggNode (int *,int *,int ,int *,int *) ;
 scalar_t__ make_sort_from_sortclauses (int *,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static Agg *
BuildAggregatePlan(PlannerInfo *root, Query *masterQuery, Plan *subPlan)
{

 Assert(masterQuery->hasAggs || masterQuery->groupClause);
 AggClauseCosts aggregateCosts;
 AggStrategy aggregateStrategy = AGG_PLAIN;
 List *groupColumnList = masterQuery->groupClause;
 List *aggregateTargetList = masterQuery->targetList;
 Node *havingQual = SS_process_sublinks(root, masterQuery->havingQual, 1);






 havingQual = SS_replace_correlation_vars(root, havingQual);



 memset(&aggregateCosts, 0, sizeof(AggClauseCosts));
 get_agg_clause_costs(root, (Node *) aggregateTargetList, AGGSPLIT_SIMPLE,
       &aggregateCosts);

 get_agg_clause_costs(root, (Node *) havingQual, AGGSPLIT_SIMPLE, &aggregateCosts);



 if (list_length(groupColumnList) > 0)
 {
  bool groupingIsHashable = grouping_is_hashable(groupColumnList);
  bool groupingIsSortable = grouping_is_sortable(groupColumnList);
  bool hasDistinctAggregate = HasDistinctAggregate(masterQuery);

  if (!groupingIsHashable && !groupingIsSortable)
  {
   ereport(ERROR, (errmsg("grouped column list cannot be hashed or sorted")));
  }
  if (!enable_hashagg || !groupingIsHashable || hasDistinctAggregate ||
   UseGroupAggregateWithHLL(masterQuery))
  {
   char *messageHint = ((void*)0);
   if (!enable_hashagg && groupingIsHashable)
   {
    messageHint = "Consider setting enable_hashagg to on.";
   }

   if (!groupingIsSortable)
   {
    ereport(ERROR, (errmsg("grouped column list must cannot be sorted"),
        errdetail("Having a distinct aggregate requires "
            "grouped column list to be sortable."),
        messageHint ? errhint("%s", messageHint) : 0));
   }

   aggregateStrategy = AGG_SORTED;
   subPlan = (Plan *) make_sort_from_sortclauses(groupColumnList, subPlan);
  }
  else
  {
   aggregateStrategy = AGG_HASHED;
  }
 }


 Agg *aggregatePlan = makeAggNode(groupColumnList, (List *) havingQual,
          aggregateStrategy, aggregateTargetList, subPlan);


 aggregatePlan->plan.startup_cost = 0;
 aggregatePlan->plan.total_cost = 0;
 aggregatePlan->plan.plan_rows = 0;

 return aggregatePlan;
}
