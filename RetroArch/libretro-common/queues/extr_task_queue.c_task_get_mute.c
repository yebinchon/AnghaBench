
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mute; } ;
typedef TYPE_1__ retro_task_t ;


 int SLOCK_LOCK (int ) ;
 int SLOCK_UNLOCK (int ) ;
 int property_lock ;

bool task_get_mute(retro_task_t *task)
{
   bool mute = 0;

   SLOCK_LOCK(property_lock);
   mute = task->mute;
   SLOCK_UNLOCK(property_lock);

   return mute;
}
