
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* workerJob; } ;
struct TYPE_4__ {int taskList; } ;
typedef TYPE_1__ Job ;
typedef TYPE_2__ DistributedPlan ;


 int list_length (int ) ;

bool
IsMultiTaskPlan(DistributedPlan *distributedPlan)
{
 Job *workerJob = distributedPlan->workerJob;

 if (workerJob != ((void*)0) && list_length(workerJob->taskList) > 1)
 {
  return 1;
 }

 return 0;
}
