
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int finished; } ;
typedef TYPE_1__ retro_task_t ;


 int SLOCK_LOCK (int ) ;
 int SLOCK_UNLOCK (int ) ;
 int property_lock ;

void task_set_finished(retro_task_t *task, bool finished)
{
   SLOCK_LOCK(property_lock);
   task->finished = finished;
   SLOCK_UNLOCK(property_lock);
}
