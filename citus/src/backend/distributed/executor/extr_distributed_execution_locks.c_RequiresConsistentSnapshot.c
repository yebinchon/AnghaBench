
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int taskPlacementList; int modifyWithSubquery; } ;
typedef TYPE_1__ Task ;


 scalar_t__ AllModificationsCommutative ;
 int list_length (int ) ;

__attribute__((used)) static bool
RequiresConsistentSnapshot(Task *task)
{
 bool requiresIsolation = 0;

 if (!task->modifyWithSubquery)
 {




  requiresIsolation = 0;
 }
 else if (list_length(task->taskPlacementList) == 1)
 {






  requiresIsolation = 0;
 }
 else if (AllModificationsCommutative)
 {
  requiresIsolation = 0;
 }
 else
 {






  requiresIsolation = 1;
 }

 return requiresIsolation;
}
