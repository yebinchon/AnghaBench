
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int planningError; } ;
typedef int Node ;
typedef TYPE_1__ DistributedPlan ;
typedef int CustomScan ;


 int ERROR ;
 TYPE_1__* GetDistributedPlan (int *) ;
 int RaiseDeferredError (int ,int ) ;

__attribute__((used)) static Node *
DelayedErrorCreateScan(CustomScan *scan)
{
 DistributedPlan *distributedPlan = GetDistributedPlan(scan);


 RaiseDeferredError(distributedPlan->planningError, ERROR);

 return ((void*)0);
}
