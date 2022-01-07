
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * title; } ;
typedef TYPE_1__ retro_task_t ;


 int SLOCK_LOCK (int ) ;
 int SLOCK_UNLOCK (int ) ;
 int free (int *) ;
 int property_lock ;

void task_free_title(retro_task_t *task)
{
   SLOCK_LOCK(property_lock);
   if (task->title)
      free(task->title);
   task->title = ((void*)0);
   SLOCK_UNLOCK(property_lock);
}
