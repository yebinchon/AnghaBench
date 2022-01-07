
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int boolean_t ;


 int task_is_exec_copy_internal (int ) ;

boolean_t
task_is_exec_copy(task_t task)
{
 return task_is_exec_copy_internal(task);
}
