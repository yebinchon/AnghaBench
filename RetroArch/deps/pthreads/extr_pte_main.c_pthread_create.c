
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * pthread_t ;
typedef TYPE_2__* pthread_attr_t ;
struct TYPE_10__ {int sched_priority; scalar_t__ threadId; int threadLock; int * keys; int state; int detachState; } ;
typedef TYPE_3__ pte_thread_t ;
typedef scalar_t__ pte_osResult ;
struct TYPE_11__ {void* (* start ) (void*) ;void* arg; int * tid; } ;
typedef TYPE_4__ ThreadParms ;
struct TYPE_8__ {int sched_priority; } ;
struct TYPE_9__ {long stacksize; scalar_t__ inheritsched; TYPE_1__ param; int detachstate; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ PTE_OS_OK ;
 int PTE_TRUE ;
 scalar_t__ PTHREAD_INHERIT_SCHED ;
 long PTHREAD_STACK_MIN ;
 int PThreadStateInitial ;
 int PThreadStateSuspended ;
 int free (TYPE_4__*) ;
 scalar_t__ malloc (int) ;
 int * pte_new () ;
 scalar_t__ pte_osThreadCreate (int ,long,int,TYPE_4__*,scalar_t__*) ;
 int pte_osThreadGetMaxPriority () ;
 int pte_osThreadGetMinPriority () ;
 int pte_osThreadStart (scalar_t__) ;
 int pte_threadDestroy (int *) ;
 int pte_threadStart ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int * pthread_self () ;

int pthread_create (pthread_t * tid,
                const pthread_attr_t * attr,
                void *(*start) (void *), void *arg)
{
   pthread_t thread;
   pte_thread_t * tp;
   int result = EAGAIN;
   int run = PTE_TRUE;
   ThreadParms *parms = ((void*)0);
   long stackSize;
   int priority = 0;
   pthread_t self;
   pte_osResult osResult;
   register pthread_attr_t a = ((void*)0);
   if (attr != ((void*)0))
      a = *attr;

   if ((thread = pte_new ()) == ((void*)0))
      goto FAIL0;

   tp = (pte_thread_t *) thread;

   priority = tp->sched_priority;

   if ((parms = (ThreadParms *) malloc (sizeof (*parms))) == ((void*)0))
      goto FAIL0;

   parms->tid = thread;
   parms->start = start;
   parms->arg = arg;

   if (a != ((void*)0))
   {
      stackSize = a->stacksize;
      tp->detachState = a->detachstate;
      priority = a->param.sched_priority;

      if ( (priority > pte_osThreadGetMaxPriority()) ||
            (priority < pte_osThreadGetMinPriority()) )
      {
         result = EINVAL;
         goto FAIL0;
      }
      if (PTHREAD_INHERIT_SCHED == a->inheritsched)
      {





         self = pthread_self ();
         priority = ((pte_thread_t *) self)->sched_priority;
      }


   }
   else
   {



      stackSize = PTHREAD_STACK_MIN;

   }

   tp->state = run ? PThreadStateInitial : PThreadStateSuspended;

   tp->keys = ((void*)0);
   result = pthread_mutex_lock (&tp->threadLock);

   if (result == 0)
   {




      tp->sched_priority = priority;

      (void) pthread_mutex_unlock (&tp->threadLock);
   }

   osResult = pte_osThreadCreate(pte_threadStart,
         stackSize,
         priority,
         parms,
         &(tp->threadId));

   if (osResult == PTE_OS_OK)
   {
      pte_osThreadStart(tp->threadId);
      result = 0;
   }
   else
   {
      tp->threadId = 0;
      result = EAGAIN;
      goto FAIL0;
   }
FAIL0:
   if (result != 0)
   {

      pte_threadDestroy (thread);
      tp = ((void*)0);

      if (parms != ((void*)0))
         free (parms);
   }
   else
   {
      if (tid != ((void*)0))
         *tid = thread;
   }

   return (result);
}
