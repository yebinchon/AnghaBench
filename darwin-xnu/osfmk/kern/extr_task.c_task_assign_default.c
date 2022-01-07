
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int pset0 ;
 int task_assign (int ,int *,int ) ;

kern_return_t
task_assign_default(
 task_t task,
 boolean_t assign_threads)
{
    return (task_assign(task, &pset0, assign_threads));
}
