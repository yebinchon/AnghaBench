
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int semaphore_destroy_all (int ) ;

void
task_synchronizer_destroy_all(task_t task)
{



 semaphore_destroy_all(task);
}
