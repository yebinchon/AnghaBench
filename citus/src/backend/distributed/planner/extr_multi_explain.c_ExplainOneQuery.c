
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int instr_time ;
typedef int QueryEnvironment ;
typedef int Query ;
typedef int PlannedStmt ;
typedef int ParamListInfo ;
typedef int IntoClause ;
typedef int ExplainState ;


 int ExplainOnePlan (int *,int *,int *,char const*,int ,int *,int *) ;
 int ExplainOneQuery_hook (int *,int,int *,int *,char const*,int ,int *) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int * pg_plan_query (int *,int,int ) ;
 int stub1 (int *,int,int *,int *,char const*,int ,int *) ;

__attribute__((used)) static void
ExplainOneQuery(Query *query, int cursorOptions,
    IntoClause *into, ExplainState *es,
    const char *queryString, ParamListInfo params,
    QueryEnvironment *queryEnv)
{

 if (ExplainOneQuery_hook)
 {
  (*ExplainOneQuery_hook) (query, cursorOptions, into, es,
         queryString, params, queryEnv);
 }
 else
 {
  PlannedStmt *plan;
  instr_time planstart,
     planduration;

  INSTR_TIME_SET_CURRENT(planstart);


  plan = pg_plan_query(query, cursorOptions, params);

  INSTR_TIME_SET_CURRENT(planduration);
  INSTR_TIME_SUBTRACT(planduration, planstart);


  ExplainOnePlan(plan, into, es, queryString, params, queryEnv,
        &planduration);
 }
}
