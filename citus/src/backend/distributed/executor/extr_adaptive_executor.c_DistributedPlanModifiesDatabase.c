
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* workerJob; int modLevel; } ;
struct TYPE_4__ {int taskList; } ;
typedef TYPE_2__ DistributedPlan ;


 int TaskListModifiesDatabase (int ,int ) ;

bool
DistributedPlanModifiesDatabase(DistributedPlan *plan)
{
 return TaskListModifiesDatabase(plan->modLevel, plan->workerJob->taskList);
}
