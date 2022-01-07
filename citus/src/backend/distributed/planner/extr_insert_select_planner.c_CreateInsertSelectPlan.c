
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {int * planningError; } ;
typedef int Query ;
typedef int PlannerRestrictionContext ;
typedef TYPE_1__ DistributedPlan ;
typedef int DeferredErrorMessage ;


 TYPE_1__* CreateCoordinatorInsertSelectPlan (int ,int *) ;
 TYPE_1__* CreateDistributedInsertSelectPlan (int *,int *) ;
 int DEBUG1 ;
 int ERROR ;
 int * ErrorIfOnConflictNotSupported (int *) ;
 int RaiseDeferredError (int *,int ) ;

DistributedPlan *
CreateInsertSelectPlan(uint64 planId, Query *originalQuery,
        PlannerRestrictionContext *plannerRestrictionContext)
{
 DistributedPlan *distributedPlan = ((void*)0);
 DeferredErrorMessage *deferredError = ((void*)0);

 deferredError = ErrorIfOnConflictNotSupported(originalQuery);
 if (deferredError != ((void*)0))
 {

  RaiseDeferredError(deferredError, ERROR);
 }

 distributedPlan = CreateDistributedInsertSelectPlan(originalQuery,
              plannerRestrictionContext);

 if (distributedPlan->planningError != ((void*)0))
 {
  RaiseDeferredError(distributedPlan->planningError, DEBUG1);


  distributedPlan = CreateCoordinatorInsertSelectPlan(planId, originalQuery);
 }

 return distributedPlan;
}
