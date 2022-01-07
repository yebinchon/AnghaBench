
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* workerJob; int * masterQuery; } ;
struct TYPE_6__ {TYPE_1__* jobQuery; } ;
struct TYPE_5__ {int * targetList; } ;
typedef int Query ;
typedef int PlannedStmt ;
typedef int List ;
typedef TYPE_2__ Job ;
typedef TYPE_3__ DistributedPlan ;
typedef int CustomScan ;


 int * BuildSelectStatement (int *,int *,int *) ;
 int * MasterTargetList (int *) ;

PlannedStmt *
MasterNodeSelectPlan(DistributedPlan *distributedPlan, CustomScan *remoteScan)
{
 Query *masterQuery = distributedPlan->masterQuery;
 PlannedStmt *masterSelectPlan = ((void*)0);

 Job *workerJob = distributedPlan->workerJob;
 List *workerTargetList = workerJob->jobQuery->targetList;
 List *masterTargetList = MasterTargetList(workerTargetList);

 masterSelectPlan = BuildSelectStatement(masterQuery, masterTargetList, remoteScan);

 return masterSelectPlan;
}
