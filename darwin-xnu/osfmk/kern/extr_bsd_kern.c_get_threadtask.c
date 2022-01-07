
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int task_t ;
struct TYPE_3__ {int task; } ;



task_t get_threadtask(thread_t th)
{
 return(th->task);
}
