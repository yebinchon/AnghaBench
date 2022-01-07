
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* prev; void* arg; int routine; } ;
typedef TYPE_1__ ptw32_cleanup_t ;
typedef int ptw32_cleanup_callback_t ;


 scalar_t__ pthread_getspecific (int ) ;
 int pthread_setspecific (int ,void*) ;
 int ptw32_cleanupKey ;

void
ptw32_push_cleanup (ptw32_cleanup_t * cleanup,
      ptw32_cleanup_callback_t routine, void *arg)
{
  cleanup->routine = routine;
  cleanup->arg = arg;

  cleanup->prev = (ptw32_cleanup_t *) pthread_getspecific (ptw32_cleanupKey);

  pthread_setspecific (ptw32_cleanupKey, (void *) cleanup);

}
