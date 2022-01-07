
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pthread_t ;
struct TYPE_5__ {int implicit; scalar_t__ sched_priority; int threadId; int detachState; } ;
typedef TYPE_1__ pte_thread_t ;


 int PTHREAD_CREATE_DETACHED ;
 TYPE_1__* pte_new () ;
 int pte_osThreadGetHandle () ;
 int pte_selfThreadKey ;
 scalar_t__ pthread_getspecific (int ) ;
 int pthread_setspecific (int ,void*) ;

pthread_t pthread_self (void)
{
   pthread_t self;
   pte_thread_t * sp;

   sp = (pte_thread_t *) pthread_getspecific (pte_selfThreadKey);

   if (sp != ((void*)0))
      self = sp;
   else
   {
      self = pte_new ();
      sp = (pte_thread_t *) self;

      if (sp != ((void*)0))
      {






         sp->implicit = 1;
         sp->detachState = PTHREAD_CREATE_DETACHED;

         sp->threadId = pte_osThreadGetHandle();




         sp->sched_priority = 0;

         pthread_setspecific (pte_selfThreadKey, (void *) sp);
      }
   }

   return (self);
}
