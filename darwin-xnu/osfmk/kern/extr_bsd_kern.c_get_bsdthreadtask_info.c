
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_5__ {void* bsd_info; } ;
struct TYPE_4__ {TYPE_3__* task; } ;


 TYPE_3__* TASK_NULL ;

void *get_bsdthreadtask_info(thread_t th)
{
 return(th->task != TASK_NULL ? th->task->bsd_info : ((void*)0));
}
