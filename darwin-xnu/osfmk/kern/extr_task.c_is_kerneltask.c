
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ kernel_task ;

boolean_t is_kerneltask(task_t t)
{
 if (t == kernel_task)
  return (TRUE);

 return (FALSE);
}
