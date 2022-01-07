
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int taskType; } ;
typedef TYPE_1__ Task ;
typedef int RowModifyLevel ;
typedef int PlacementExecutionOrder ;



 int ERROR ;
 int EXECUTION_ORDER_ANY ;
 int EXECUTION_ORDER_PARALLEL ;
 int EXECUTION_ORDER_SEQUENTIAL ;






 int ROW_MODIFY_NONCOMMUTATIVE ;


 int ereport (int ,int ) ;
 int errmsg (char*,int) ;

__attribute__((used)) static PlacementExecutionOrder
ExecutionOrderForTask(RowModifyLevel modLevel, Task *task)
{
 switch (task->taskType)
 {
  case 129:
  case 130:
  {
   return EXECUTION_ORDER_ANY;
  }

  case 131:
  {







   if (modLevel < ROW_MODIFY_NONCOMMUTATIVE)
   {
    return EXECUTION_ORDER_SEQUENTIAL;
   }
   else
   {
    return EXECUTION_ORDER_PARALLEL;
   }
  }

  case 136:
  case 128:
  {
   return EXECUTION_ORDER_PARALLEL;
  }

  case 134:
  case 132:
  case 135:
  case 133:
  default:
  {
   ereport(ERROR, (errmsg("unsupported task type %d in adaptive executor",
           task->taskType)));
  }
 }
}
