
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int progress; } ;
typedef TYPE_1__ retro_task_t ;
typedef int int8_t ;


 int SLOCK_LOCK (int ) ;
 int SLOCK_UNLOCK (int ) ;
 int property_lock ;

void task_set_progress(retro_task_t *task, int8_t progress)
{
   SLOCK_LOCK(property_lock);
   task->progress = progress;
   SLOCK_UNLOCK(property_lock);
}
