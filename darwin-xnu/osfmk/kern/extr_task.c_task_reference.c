
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_t ;


 scalar_t__ TASK_NULL ;
 int task_reference_internal (scalar_t__) ;

void
task_reference(
 task_t task)
{
 if (task != TASK_NULL)
  task_reference_internal(task);
}
