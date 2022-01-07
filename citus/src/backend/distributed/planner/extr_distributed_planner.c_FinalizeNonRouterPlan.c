
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rtable; int utilityStmt; int queryId; } ;
typedef TYPE_1__ PlannedStmt ;
typedef int DistributedPlan ;
typedef int CustomScan ;


 TYPE_1__* MasterNodeSelectPlan (int *,int *) ;
 int list_concat (int ,int ) ;

__attribute__((used)) static PlannedStmt *
FinalizeNonRouterPlan(PlannedStmt *localPlan, DistributedPlan *distributedPlan,
       CustomScan *customScan)
{
 PlannedStmt *finalPlan = ((void*)0);

 finalPlan = MasterNodeSelectPlan(distributedPlan, customScan);
 finalPlan->queryId = localPlan->queryId;
 finalPlan->utilityStmt = localPlan->utilityStmt;


 finalPlan->rtable = list_concat(finalPlan->rtable, localPlan->rtable);

 return finalPlan;
}
