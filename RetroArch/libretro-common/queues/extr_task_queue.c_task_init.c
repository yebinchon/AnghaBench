
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ident; } ;
typedef TYPE_1__ retro_task_t ;


 scalar_t__ calloc (int,int) ;
 int task_count ;

retro_task_t *task_init(void)
{
   retro_task_t *task = (retro_task_t*)calloc(1, sizeof(*task));

   task->ident = task_count++;

   return task;
}
