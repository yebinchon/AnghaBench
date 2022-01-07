
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cancelled; } ;
typedef TYPE_1__ retro_task_t ;



__attribute__((used)) static void retro_task_regular_cancel(void *task)
{
   retro_task_t *t = (retro_task_t*)task;
   t->cancelled = 1;
}
