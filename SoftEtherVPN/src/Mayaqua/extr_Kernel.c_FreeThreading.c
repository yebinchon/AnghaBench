
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ param; } ;
struct TYPE_7__ {int InitFinishEvent; int Event; int * ThreadProc; } ;
typedef TYPE_1__ THREAD_POOL_DATA ;
typedef TYPE_2__ THREAD ;


 scalar_t__ Count (int *) ;
 int DeleteCounter (int *) ;
 int Free (TYPE_1__*) ;
 TYPE_2__* Pop (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseSk (int ) ;
 int ReleaseThreadInternal (TYPE_2__*) ;
 int Set (int ) ;
 int SleepThread (int) ;
 int WaitThreadInternal (TYPE_2__*) ;
 int * thread_count ;
 int thread_pool ;

void FreeThreading()
{
 while (1)
 {
  if (Count(thread_count) == 0)
  {
   break;
  }

  SleepThread(25);
 }

 while (1)
 {
  THREAD_POOL_DATA *pd;
  THREAD *t = Pop(thread_pool);

  if (t == ((void*)0))
  {
   break;
  }

  pd = (THREAD_POOL_DATA *)t->param;

  pd->ThreadProc = ((void*)0);
  Set(pd->Event);

  WaitThreadInternal(t);

  pd = (THREAD_POOL_DATA *)t->param;
  ReleaseEvent(pd->Event);
  ReleaseEvent(pd->InitFinishEvent);

  ReleaseThreadInternal(t);

  Free(pd);
 }

 ReleaseSk(thread_pool);

 DeleteCounter(thread_count);
 thread_count = ((void*)0);
}
