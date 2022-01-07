
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int * thread_proc; int ref; void* param; int init_finished_event; } ;
typedef int THREAD_PROC ;
typedef TYPE_1__ THREAD ;


 int AbortExit () ;
 int KS_INC (int ) ;
 int KS_NEWTHREAD_COUNT ;
 int NewEvent () ;
 int NewRef () ;
 scalar_t__ OSInitThread (TYPE_1__*) ;
 int SleepThread (int) ;
 TYPE_1__* ZeroMalloc (int) ;
 int printf (char*) ;

THREAD *NewThreadInternal(THREAD_PROC *thread_proc, void *param)
{
 THREAD *t;
 UINT retry = 0;

 if (thread_proc == ((void*)0))
 {
  return ((void*)0);
 }


 t = ZeroMalloc(sizeof(THREAD));
 t->init_finished_event = NewEvent();

 t->param = param;
 t->ref = NewRef();
 t->thread_proc = thread_proc;


 while (1)
 {
  if ((retry++) > 60)
  {
   printf("\n\n*** error: new thread create failed.\n\n");
   AbortExit();
  }
  if (OSInitThread(t))
  {
   break;
  }
  SleepThread(500);
 }


 KS_INC(KS_NEWTHREAD_COUNT);

 return t;
}
