
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pthread_t ;
struct TYPE_5__ {void* exitStatus; int start_mark; int state; } ;
typedef TYPE_1__ pte_thread_t ;
struct TYPE_6__ {void* (* start ) (void*) ;void* arg; scalar_t__ tid; } ;
typedef TYPE_2__ ThreadParms ;




 void* PTHREAD_CANCELED ;
 int PThreadStateRunning ;
 int free (TYPE_2__*) ;
 int pte_selfThreadKey ;
 int pte_thread_detach_and_exit_np () ;
 int pthread_setspecific (int ,TYPE_1__*) ;
 int setjmp (int ) ;
 void* stub1 (void*) ;

int pte_threadStart (void *vthreadParms)
{
   ThreadParms * threadParms = (ThreadParms *) vthreadParms;
   void *(*start) (void *);
   void * arg;


   int setjmp_rc;

   void * status = (void *) 0;

   pthread_t self = threadParms->tid;
   pte_thread_t *sp = (pte_thread_t *) self;
   start = threadParms->start;
   arg = threadParms->arg;





   pthread_setspecific (pte_selfThreadKey, sp);

   sp->state = PThreadStateRunning;

   setjmp_rc = setjmp (sp->start_mark);





   if (0 == setjmp_rc)
      sp->exitStatus = status = (*start) (arg);
   else
   {
      switch (setjmp_rc)
      {
         case 129:
            status = sp->exitStatus = PTHREAD_CANCELED;
            break;
         case 128:
            status = sp->exitStatus;
            break;
         default:
            status = sp->exitStatus = PTHREAD_CANCELED;
            break;
      }
   }
   (void) pte_thread_detach_and_exit_np ();







   return (unsigned) status;
}
