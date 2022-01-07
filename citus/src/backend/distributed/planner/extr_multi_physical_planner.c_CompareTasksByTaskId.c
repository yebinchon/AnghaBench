
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int taskId; } ;
typedef TYPE_1__ Task ;



int
CompareTasksByTaskId(const void *leftElement, const void *rightElement)
{
 const Task *leftTask = *((const Task **) leftElement);
 const Task *rightTask = *((const Task **) rightElement);

 uint32 leftTaskId = leftTask->taskId;
 uint32 rightTaskId = rightTask->taskId;

 int taskIdDiff = leftTaskId - rightTaskId;
 return taskIdDiff;
}
