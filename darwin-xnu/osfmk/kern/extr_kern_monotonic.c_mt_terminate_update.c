
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int task_t ;


 int mt_update_task (int ,int ) ;

void
mt_terminate_update(task_t task, thread_t thread)
{
 mt_update_task(task, thread);
}
