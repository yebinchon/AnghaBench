
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int threadCopy ;
typedef scalar_t__ pthread_t ;
struct TYPE_4__ {scalar_t__ threadId; int threadLock; int cancelLock; } ;
typedef TYPE_1__ pte_thread_t ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int pte_osThreadDelete (scalar_t__) ;
 int pte_osThreadExitAndDelete (scalar_t__) ;
 int pte_threadReusePush (scalar_t__) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void pte_threadDestroyCommon (pthread_t thread, unsigned char shouldThreadExit)
{
   pte_thread_t threadCopy;
   pte_thread_t * tp = (pte_thread_t *) thread;

   if (!tp)
      return;




   memcpy (&threadCopy, tp, sizeof (threadCopy));





   pte_threadReusePush (thread);

   (void) pthread_mutex_destroy(&threadCopy.cancelLock);
   (void) pthread_mutex_destroy(&threadCopy.threadLock);

   if (threadCopy.threadId != 0)
   {
      if (shouldThreadExit)
         pte_osThreadExitAndDelete(threadCopy.threadId);
      else
         pte_osThreadDelete(threadCopy.threadId);
   }
}
