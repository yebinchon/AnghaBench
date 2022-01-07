
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int current_task_fast () ;

task_t current_task(void)
{
 return (current_task_fast());
}
