
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cancelled; } ;
typedef TYPE_1__ retro_task_t ;


 int SLOCK_LOCK (int ) ;
 int SLOCK_UNLOCK (int ) ;
 int running_lock ;

void task_set_cancelled(retro_task_t *task, bool cancelled)
{
   SLOCK_LOCK(running_lock);
   task->cancelled = cancelled;
   SLOCK_UNLOCK(running_lock);
}
