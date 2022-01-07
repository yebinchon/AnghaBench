
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int task_threaded_enable ;

void task_queue_set_threaded(void)
{
   task_threaded_enable = 1;
}
