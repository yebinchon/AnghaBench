
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int PlannedStmt ;
typedef int ParamListInfo ;
typedef int DestReceiver ;


 int CURSOR_OPT_PARALLEL_OK ;
 int ExecutePlanIntoDestReceiver (int *,int ,int *) ;
 int * pg_plan_query (int *,int,int ) ;

void
ExecuteQueryIntoDestReceiver(Query *query, ParamListInfo params, DestReceiver *dest)
{
 PlannedStmt *queryPlan = ((void*)0);
 int cursorOptions = 0;

 cursorOptions = CURSOR_OPT_PARALLEL_OK;


 queryPlan = pg_plan_query(query, cursorOptions, params);

 ExecutePlanIntoDestReceiver(queryPlan, params, dest);
}
