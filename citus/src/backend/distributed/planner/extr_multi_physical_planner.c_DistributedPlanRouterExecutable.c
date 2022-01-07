
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* workerJob; TYPE_2__* masterQuery; } ;
struct TYPE_8__ {TYPE_1__* jobQuery; int * dependedJobList; int * taskList; } ;
struct TYPE_7__ {int * sortClause; } ;
struct TYPE_6__ {int hasAggs; } ;
typedef TYPE_2__ Query ;
typedef int List ;
typedef TYPE_3__ Job ;
typedef TYPE_4__ DistributedPlan ;


 int EnableRouterExecution ;
 int list_length (int *) ;

__attribute__((used)) static bool
DistributedPlanRouterExecutable(DistributedPlan *distributedPlan)
{
 Query *masterQuery = distributedPlan->masterQuery;
 Job *job = distributedPlan->workerJob;
 List *workerTaskList = job->taskList;
 int taskCount = list_length(workerTaskList);
 int dependedJobCount = list_length(job->dependedJobList);
 bool masterQueryHasAggregates = 0;

 if (!EnableRouterExecution)
 {
  return 0;
 }


 if (taskCount != 1)
 {
  return 0;
 }


 if (dependedJobCount > 0)
 {
  return 0;
 }






 if (masterQuery != ((void*)0) && list_length(masterQuery->sortClause) > 0)
 {
  return 0;
 }






 masterQueryHasAggregates = job->jobQuery->hasAggs;
 if (masterQueryHasAggregates)
 {
  return 0;
 }

 return 1;
}
