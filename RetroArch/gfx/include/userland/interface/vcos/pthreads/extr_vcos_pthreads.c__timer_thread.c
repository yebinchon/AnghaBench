
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {int lock; int orig_context; int (* orig_expiration_routine ) (int ) ;int expires; int settings_changed; int quit; } ;
typedef TYPE_1__ VCOS_TIMER_T ;


 int CLOCK_REALTIME ;
 scalar_t__ _timespec_is_larger (int *,struct timespec*) ;
 scalar_t__ _timespec_is_zero (int *) ;
 int _timespec_set_zero (int *) ;
 int clock_gettime (int ,struct timespec*) ;
 int pthread_cond_timedwait (int *,int *,int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void* _timer_thread(void *arg)
{
   VCOS_TIMER_T *timer = (VCOS_TIMER_T*)arg;

   pthread_mutex_lock(&timer->lock);
   while (!timer->quit)
   {
      struct timespec now;


      if (_timespec_is_zero(&timer->expires))
         pthread_cond_wait(&timer->settings_changed, &timer->lock);
      else
         pthread_cond_timedwait(&timer->settings_changed, &timer->lock, &timer->expires);


      clock_gettime(CLOCK_REALTIME, &now);
      if (_timespec_is_zero(&timer->expires) || _timespec_is_larger(&timer->expires, &now))
         continue;




      _timespec_set_zero(&timer->expires);
      timer->orig_expiration_routine(timer->orig_context);
   }
   pthread_mutex_unlock(&timer->lock);

   return ((void*)0);
}
