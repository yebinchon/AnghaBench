
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* task_data; } ;
typedef TYPE_1__ retro_task_t ;


 int SLOCK_LOCK (int ) ;
 int SLOCK_UNLOCK (int ) ;
 int running_lock ;

void task_set_data(retro_task_t *task, void *data)
{
   SLOCK_LOCK(running_lock);
   task->task_data = data;
   SLOCK_UNLOCK(running_lock);
}
