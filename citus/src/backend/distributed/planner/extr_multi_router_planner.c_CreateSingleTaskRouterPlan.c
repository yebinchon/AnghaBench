
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int routerExecutable; int hasReturning; int * masterQuery; int * workerJob; int * planningError; int modLevel; } ;
typedef int Query ;
typedef int PlannerRestrictionContext ;
typedef int Job ;
typedef TYPE_1__ DistributedPlan ;


 int DEBUG2 ;
 int * RouterJob (int *,int *,int **) ;
 int RowModifyLevelForQuery (int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
CreateSingleTaskRouterPlan(DistributedPlan *distributedPlan, Query *originalQuery,
         Query *query,
         PlannerRestrictionContext *plannerRestrictionContext)
{
 Job *job = ((void*)0);

 distributedPlan->modLevel = RowModifyLevelForQuery(query);


 job = RouterJob(originalQuery, plannerRestrictionContext,
     &distributedPlan->planningError);

 if (distributedPlan->planningError != ((void*)0))
 {

  return;
 }

 ereport(DEBUG2, (errmsg("Creating router plan")));

 distributedPlan->workerJob = job;
 distributedPlan->masterQuery = ((void*)0);
 distributedPlan->routerExecutable = 1;
 distributedPlan->hasReturning = 0;
}
