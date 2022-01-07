
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
struct uthread {int uu_aio_task; } ;


 int current_thread () ;
 scalar_t__ get_bsdthread_info (int ) ;

task_t
get_aiotask(void)
{
 return ((struct uthread *)get_bsdthread_info(current_thread()))->uu_aio_task;
}
