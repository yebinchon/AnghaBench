
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prev; int arg; int (* routine ) (int ) ;} ;
typedef TYPE_1__ ptw32_cleanup_t ;


 scalar_t__ pthread_getspecific (int ) ;
 int pthread_setspecific (int ,void*) ;
 int ptw32_cleanupKey ;
 int stub1 (int ) ;

ptw32_cleanup_t *
ptw32_pop_cleanup (int execute)
{
  ptw32_cleanup_t *cleanup;

  cleanup = (ptw32_cleanup_t *) pthread_getspecific (ptw32_cleanupKey);

  if (cleanup != ((void*)0))
    {
      if (execute && (cleanup->routine != ((void*)0)))
 {

   (*cleanup->routine) (cleanup->arg);

 }

      pthread_setspecific (ptw32_cleanupKey, (void *) cleanup->prev);

    }

  return (cleanup);

}
