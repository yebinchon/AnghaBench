
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* title; } ;
typedef TYPE_1__ retro_task_t ;


 int SLOCK_LOCK (int ) ;
 int SLOCK_UNLOCK (int ) ;
 int property_lock ;

char* task_get_title(retro_task_t *task)
{
   char *title = ((void*)0);

   SLOCK_LOCK(property_lock);
   title = task->title;
   SLOCK_UNLOCK(property_lock);

   return title;
}
