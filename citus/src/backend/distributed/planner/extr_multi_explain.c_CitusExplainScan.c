
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ExplainState {int indent; int str; } ;
struct TYPE_5__ {TYPE_1__* distributedPlan; } ;
struct TYPE_4__ {scalar_t__ subPlanList; int workerJob; } ;
typedef int List ;
typedef TYPE_1__ DistributedPlan ;
typedef int CustomScanState ;
typedef TYPE_2__ CitusScanState ;


 int ExplainCloseGroup (char*,char*,int,struct ExplainState*) ;
 int ExplainDistributedQueries ;
 int ExplainJob (int ,struct ExplainState*) ;
 int ExplainOpenGroup (char*,char*,int,struct ExplainState*) ;
 int ExplainSubPlans (TYPE_1__*,struct ExplainState*) ;
 scalar_t__ NIL ;
 int appendStringInfo (int ,char*) ;
 int appendStringInfoSpaces (int ,int) ;

void
CitusExplainScan(CustomScanState *node, List *ancestors, struct ExplainState *es)
{
 CitusScanState *scanState = (CitusScanState *) node;
 DistributedPlan *distributedPlan = scanState->distributedPlan;

 if (!ExplainDistributedQueries)
 {
  appendStringInfoSpaces(es->str, es->indent * 2);
  appendStringInfo(es->str, "explain statements for distributed queries ");
  appendStringInfo(es->str, "are not enabled\n");
  return;
 }

 ExplainOpenGroup("Distributed Query", "Distributed Query", 1, es);

 if (distributedPlan->subPlanList != NIL)
 {
  ExplainSubPlans(distributedPlan, es);
 }

 ExplainJob(distributedPlan->workerJob, es);

 ExplainCloseGroup("Distributed Query", "Distributed Query", 1, es);
}
