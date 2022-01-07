
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int task_threaded_enable ;

bool task_queue_is_threaded(void)
{
   return task_threaded_enable;
}
