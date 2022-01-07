
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_11__ {TYPE_1__* planTree; } ;
struct TYPE_10__ {int total_cost; } ;
typedef int Query ;
typedef int PlannerRestrictionContext ;
typedef TYPE_2__ PlannedStmt ;
typedef int ParamListInfo ;
typedef int Node ;
typedef int List ;
typedef int DistributedPlan ;


 int AdjustPartitioningForDistributedPlanning (int *,int) ;
 int Assert (scalar_t__) ;
 int AssignRTEIdentities (int *) ;
 int CURSOR_OPT_FORCE_DISTRIBUTED ;
 scalar_t__ CitusHasBeenLoaded () ;
 int * CreateAndPushPlannerRestrictionContext () ;
 TYPE_2__* CreateDistributedPlannedStmt (int ,TYPE_2__*,int *,int *,int ,int *) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int * ExtractRangeTableEntryList (int *) ;
 int FLT_MAX ;
 TYPE_2__* FastPathPlanner (int *,int *,int ) ;
 scalar_t__ FastPathRouterQuery (int *) ;
 TYPE_2__* FinalizePlan (TYPE_2__*,int *) ;
 scalar_t__ InsertSelectIntoLocalTable (int *) ;
 scalar_t__ IsLocalReferenceTableJoin (int *,int *) ;
 int ListContainsDistributedTableRTE (int *) ;
 scalar_t__ NeedsDistributedPlanning (int *) ;
 int NextPlanId ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PopPlannerRestrictionContext () ;
 int ReplaceTableVisibleFunction (int *) ;
 int * TryToDelegateFunctionCall (int *,int*) ;
 int UpdateReferenceTablesWithShard (int *,int *) ;
 int * copyObject (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 TYPE_2__* standard_planner (int *,int,int ) ;

PlannedStmt *
distributed_planner(Query *parse, int cursorOptions, ParamListInfo boundParams)
{
 PlannedStmt *result = ((void*)0);
 bool needsDistributedPlanning = 0;
 Query *originalQuery = ((void*)0);
 PlannerRestrictionContext *plannerRestrictionContext = ((void*)0);
 bool setPartitionedTablesInherited = 0;
 List *rangeTableList = ExtractRangeTableEntryList(parse);

 if (cursorOptions & CURSOR_OPT_FORCE_DISTRIBUTED)
 {

  Assert(CitusHasBeenLoaded());

  needsDistributedPlanning = 1;
 }
 else if (CitusHasBeenLoaded())
 {
  if (IsLocalReferenceTableJoin(parse, rangeTableList))
  {





   needsDistributedPlanning = 0;
   UpdateReferenceTablesWithShard((Node *) parse, ((void*)0));
  }
  else
  {
   needsDistributedPlanning = ListContainsDistributedTableRTE(rangeTableList);
  }
 }

 if (needsDistributedPlanning)
 {






  if (InsertSelectIntoLocalTable(parse))
  {
   ereport(ERROR, (errmsg("cannot INSERT rows from a distributed query into a "
           "local table"),
       errhint("Consider using CREATE TEMPORARY TABLE tmp AS "
         "SELECT ... and inserting from the temporary "
         "table.")));
  }
  AssignRTEIdentities(rangeTableList);
  originalQuery = copyObject(parse);

  setPartitionedTablesInherited = 0;
  AdjustPartitioningForDistributedPlanning(rangeTableList,
             setPartitionedTablesInherited);
 }





 ReplaceTableVisibleFunction((Node *) parse);


 plannerRestrictionContext = CreateAndPushPlannerRestrictionContext();

 PG_TRY();
 {
  if (needsDistributedPlanning && FastPathRouterQuery(originalQuery))
  {
   result = FastPathPlanner(originalQuery, parse, boundParams);
  }
  else
  {
   result = standard_planner(parse, cursorOptions, boundParams);
  }

  if (needsDistributedPlanning)
  {
   uint64 planId = NextPlanId++;

   result = CreateDistributedPlannedStmt(planId, result, originalQuery, parse,
              boundParams, plannerRestrictionContext);

   setPartitionedTablesInherited = 1;
   AdjustPartitioningForDistributedPlanning(rangeTableList,
              setPartitionedTablesInherited);
  }
  else
  {
   bool hasExternParam = 0;
   DistributedPlan *delegatePlan = TryToDelegateFunctionCall(parse,
                   &hasExternParam);
   if (delegatePlan != ((void*)0))
   {
    result = FinalizePlan(result, delegatePlan);
   }
   else if (hasExternParam)
   {




    result->planTree->total_cost = FLT_MAX / 100000000;
   }
  }
 }
 PG_CATCH();
 {
  PopPlannerRestrictionContext();
  PG_RE_THROW();
 }
 PG_END_TRY();


 PopPlannerRestrictionContext();







 if (!needsDistributedPlanning && NeedsDistributedPlanning(parse))
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot perform distributed planning on this "
          "query because parameterized queries for SQL "
          "functions referencing distributed tables are "
          "not supported"),
      errhint("Consider using PL/pgSQL functions instead.")));
 }

 return result;
}
