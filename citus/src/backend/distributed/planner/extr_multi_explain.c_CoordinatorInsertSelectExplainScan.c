
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ExplainState {scalar_t__ analyze; } ;
struct TYPE_4__ {TYPE_1__* distributedPlan; } ;
struct TYPE_3__ {int * insertSelectSubquery; } ;
typedef int Query ;
typedef int * ParamListInfo ;
typedef int List ;
typedef int IntoClause ;
typedef TYPE_1__ DistributedPlan ;
typedef int CustomScanState ;
typedef TYPE_2__ CitusScanState ;


 int ERROR ;
 int ExplainCloseGroup (char*,char*,int,struct ExplainState*) ;
 int ExplainOneQuery (int *,int ,int *,struct ExplainState*,char*,int *,int *) ;
 int ExplainOpenGroup (char*,char*,int,struct ExplainState*) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

void
CoordinatorInsertSelectExplainScan(CustomScanState *node, List *ancestors,
           struct ExplainState *es)
{
 CitusScanState *scanState = (CitusScanState *) node;
 DistributedPlan *distributedPlan = scanState->distributedPlan;
 Query *query = distributedPlan->insertSelectSubquery;
 IntoClause *into = ((void*)0);
 ParamListInfo params = ((void*)0);
 char *queryString = ((void*)0);

 if (es->analyze)
 {

  ereport(ERROR, (errmsg("EXPLAIN ANALYZE is currently not supported for INSERT "
          "... SELECT commands via the coordinator")));
 }

 ExplainOpenGroup("Select Query", "Select Query", 0, es);


 ExplainOneQuery(query, 0, into, es, queryString, params, ((void*)0));

 ExplainCloseGroup("Select Query", "Select Query", 0, es);
}
