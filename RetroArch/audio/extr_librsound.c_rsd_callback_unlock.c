
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cb_lock; } ;
typedef TYPE_1__ rsound_t ;


 int slock_unlock (int ) ;

void rsd_callback_unlock(rsound_t *rsound)
{
   slock_unlock(rsound->cb_lock);
}
