
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tasksToExecute; int modLevel; } ;
typedef TYPE_1__ DistributedExecution ;


 int TaskListModifiesDatabase (int ,int ) ;

__attribute__((used)) static bool
DistributedExecutionModifiesDatabase(DistributedExecution *execution)
{
 return TaskListModifiesDatabase(execution->modLevel, execution->tasksToExecute);
}
