
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ detachState; int cancelLock; int state; } ;
typedef TYPE_1__ pte_thread_t ;
struct TYPE_8__ {int key; } ;


 scalar_t__ PTHREAD_CREATE_DETACHED ;
 int PThreadStateLast ;
 int pte_callUserDestroyRoutines (TYPE_1__*) ;
 int pte_osThreadExit () ;
 int pte_osTlsSetValue (int ,int *) ;
 scalar_t__ pte_processInitialized ;
 TYPE_2__* pte_selfThreadKey ;
 int pte_threadDestroy (TYPE_1__*) ;
 int pte_threadExitAndDestroy (TYPE_1__*) ;
 scalar_t__ pthread_getspecific (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int pte_thread_detach_common (unsigned char threadShouldExit)
{
   if (pte_processInitialized)
   {




      pte_thread_t * sp = (pte_thread_t *) pthread_getspecific (pte_selfThreadKey);

      if (sp)
      {
         pte_callUserDestroyRoutines (sp);

         (void) pthread_mutex_lock (&sp->cancelLock);
         sp->state = PThreadStateLast;





         (void) pthread_mutex_unlock (&sp->cancelLock);

         if (sp->detachState == PTHREAD_CREATE_DETACHED)
         {
            if (threadShouldExit)
               pte_threadExitAndDestroy (sp);
            else
               pte_threadDestroy (sp);




         }
         else
         {
            if (threadShouldExit)
               pte_osThreadExit();
         }
      }
   }

   return 1;
}
