
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int settings_changed; int expires; } ;
typedef TYPE_1__ VCOS_TIMER_T ;


 int _timespec_set_zero (int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vcos_assert (TYPE_1__*) ;

void vcos_pthreads_timer_cancel(VCOS_TIMER_T *timer)
{
   vcos_assert(timer);

   pthread_mutex_lock(&timer->lock);

   _timespec_set_zero(&timer->expires);
   pthread_cond_signal(&timer->settings_changed);

   pthread_mutex_unlock(&timer->lock);
}
