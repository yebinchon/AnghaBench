
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relationIdList; int targetRelationId; } ;
typedef int Oid ;
typedef TYPE_1__ DistributedPlan ;


 int AccessShareLock ;
 scalar_t__ DistributedPlanModifiesDatabase (TYPE_1__*) ;
 int LockPartitionsInRelationList (int ,int ) ;
 int RowExclusiveLock ;
 int list_make1_oid (int ) ;

__attribute__((used)) static void
LockPartitionsForDistributedPlan(DistributedPlan *distributedPlan)
{
 if (DistributedPlanModifiesDatabase(distributedPlan))
 {
  Oid targetRelationId = distributedPlan->targetRelationId;

  LockPartitionsInRelationList(list_make1_oid(targetRelationId), RowExclusiveLock);
 }






 LockPartitionsInRelationList(distributedPlan->relationIdList, AccessShareLock);
}
