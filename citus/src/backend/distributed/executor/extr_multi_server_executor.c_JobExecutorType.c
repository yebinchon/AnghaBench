
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int consttype; int constvalue; int constisnull; } ;
struct TYPE_6__ {int routerExecutable; scalar_t__ modLevel; int * insertSelectSubquery; TYPE_1__* workerJob; } ;
struct TYPE_5__ {int * taskList; int * dependedJobList; TYPE_3__* partitionKeyValue; } ;
typedef int Oid ;
typedef scalar_t__ MultiExecutorType ;
typedef int List ;
typedef TYPE_1__ Job ;
typedef TYPE_2__ DistributedPlan ;
typedef int Datum ;
typedef TYPE_3__ Const ;


 int * ActiveReadableWorkerNodeList () ;
 int ApplyLogRedaction (char*) ;
 int Assert (int) ;
 int DEBUG1 ;
 int DEBUG2 ;
 char* DatumToString (int ,int ) ;
 int ERROR ;
 int EnableRepartitionJoins ;
 scalar_t__ IsLoggableLevel (int ) ;
 scalar_t__ MULTI_EXECUTOR_ADAPTIVE ;
 scalar_t__ MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT ;
 scalar_t__ MULTI_EXECUTOR_TASK_TRACKER ;
 double MaxTrackedTasksPerNode ;
 scalar_t__ ROW_MODIFY_READONLY ;
 scalar_t__ TaskExecutorType ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errdetail (char*,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int list_length (int *) ;

MultiExecutorType
JobExecutorType(DistributedPlan *distributedPlan)
{
 Job *job = distributedPlan->workerJob;
 MultiExecutorType executorType = TaskExecutorType;
 bool routerExecutablePlan = distributedPlan->routerExecutable;


 if (routerExecutablePlan)
 {
  if (IsLoggableLevel(DEBUG2))
  {
   Const *partitionValueConst = job->partitionKeyValue;

   if (partitionValueConst != ((void*)0) && !partitionValueConst->constisnull)
   {
    Datum partitionColumnValue = partitionValueConst->constvalue;
    Oid partitionColumnType = partitionValueConst->consttype;
    char *partitionColumnString = DatumToString(partitionColumnValue,
               partitionColumnType);

    ereport(DEBUG2, (errmsg("Plan is router executable"),
         errdetail("distribution column value: %s",
             ApplyLogRedaction(partitionColumnString))));
   }
   else
   {
    ereport(DEBUG2, (errmsg("Plan is router executable")));
   }
  }

  return MULTI_EXECUTOR_ADAPTIVE;
 }

 if (distributedPlan->insertSelectSubquery != ((void*)0))
 {






  return MULTI_EXECUTOR_COORDINATOR_INSERT_SELECT;
 }

 Assert(distributedPlan->modLevel == ROW_MODIFY_READONLY);

 if (executorType == MULTI_EXECUTOR_ADAPTIVE)
 {



  int dependedJobCount = list_length(job->dependedJobList);
  if (dependedJobCount > 0)
  {
   if (!EnableRepartitionJoins)
   {
    ereport(ERROR, (errmsg(
         "the query contains a join that requires repartitioning"),
        errhint("Set citus.enable_repartition_joins to on "
          "to enable repartitioning")));
   }

   ereport(DEBUG1, (errmsg(
         "cannot use adaptive executor with repartition jobs"),
        errhint("Since you enabled citus.enable_repartition_joins "
          "Citus chose to use task-tracker.")));
   return MULTI_EXECUTOR_TASK_TRACKER;
  }
 }
 else
 {
  List *workerNodeList = ActiveReadableWorkerNodeList();
  int workerNodeCount = list_length(workerNodeList);
  int taskCount = list_length(job->taskList);
  double tasksPerNode = taskCount / ((double) workerNodeCount);


  if (tasksPerNode >= MaxTrackedTasksPerNode)
  {
   ereport(WARNING, (errmsg("this query assigns more tasks per node than the "
          "configured max_tracked_tasks_per_node limit")));
  }
 }

 return executorType;
}
