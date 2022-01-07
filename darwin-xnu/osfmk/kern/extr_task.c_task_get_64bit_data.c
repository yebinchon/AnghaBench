
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int boolean_t ;


 int task_has_64Bit_data (int ) ;

boolean_t
task_get_64bit_data(task_t task)
{
 return task_has_64Bit_data(task);
}
