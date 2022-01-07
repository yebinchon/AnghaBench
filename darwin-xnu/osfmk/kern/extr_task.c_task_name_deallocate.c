
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef scalar_t__ task_name_t ;


 void task_deallocate (int ) ;

void
task_name_deallocate(
 task_name_t task_name)
{
 return(task_deallocate((task_t)task_name));
}
