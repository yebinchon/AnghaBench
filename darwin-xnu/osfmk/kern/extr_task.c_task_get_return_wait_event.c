
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int event_t ;
struct TYPE_3__ {int t_procflags; } ;



event_t
task_get_return_wait_event(task_t task)
{
 return (event_t)&task->t_procflags;
}
