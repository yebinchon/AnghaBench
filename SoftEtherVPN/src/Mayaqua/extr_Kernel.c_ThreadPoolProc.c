
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_11__ {char* Name; int Stopped; int PoolHalting; int release_event; TYPE_1__* ref; int PoolWaitList; int ThreadId; int param; } ;
struct TYPE_10__ {TYPE_3__* Thread; int (* ThreadProc ) (TYPE_3__*,int ) ;int * InitFinishEvent; int Event; } ;
struct TYPE_9__ {int c; } ;
typedef TYPE_2__ THREAD_POOL_DATA ;
typedef TYPE_3__ THREAD ;
typedef int EVENT ;


 int Count (int ) ;
 int Dec (int ) ;
 int DeleteAll (int ) ;
 int Free (int **) ;
 int INFINITE ;
 size_t LIST_NUM (int ) ;
 int LockList (int ) ;
 int LockSk (int ) ;
 int MsRestoreThreadPriority () ;
 int NoticeThreadInitInternal (TYPE_3__*) ;
 int Push (int ,TYPE_3__*) ;
 int ReleaseEvent (int *) ;
 int ReleaseThread (TYPE_3__*) ;
 int Set (int *) ;
 int SetThreadName (int ,char*,int ) ;
 int ThreadId () ;
 int ** ToArray (int ) ;
 int UnlockList (int ) ;
 int UnlockSk (int ) ;
 int Wait (int ,int) ;
 int stub1 (TYPE_3__*,int ) ;
 int thread_count ;
 int thread_pool ;

void ThreadPoolProc(THREAD *t, void *param)
{
 THREAD_POOL_DATA *pd;

 if (t == ((void*)0))
 {
  return;
 }

 pd = (THREAD_POOL_DATA *)param;

 NoticeThreadInitInternal(t);

 while (1)
 {
  THREAD *thread;
  UINT i, num;
  EVENT **ee;


  Wait(pd->Event, INFINITE);

  if (pd->ThreadProc == ((void*)0))
  {

   break;
  }

  thread = pd->Thread;
  thread->ThreadId = ThreadId();


  Set(pd->InitFinishEvent);


  if (thread->Name != ((void*)0))
  {
   SetThreadName(thread->ThreadId, thread->Name, thread->param);
  }
  else
  {
   SetThreadName(thread->ThreadId, "Unknown", 0);
  }


  pd->ThreadProc(pd->Thread, thread->param);


  SetThreadName(thread->ThreadId, ((void*)0), 0);

  pd->Thread->Stopped = 1;

  thread->PoolHalting = 1;


  LockList(thread->PoolWaitList);
  {
   num = LIST_NUM(thread->PoolWaitList);
   ee = ToArray(thread->PoolWaitList);

   DeleteAll(thread->PoolWaitList);
  }
  UnlockList(thread->PoolWaitList);

  for (i = 0;i < num;i++)
  {
   EVENT *e = ee[i];

   Set(e);
   ReleaseEvent(e);
  }

  Free(ee);

  while (1)
  {
   if (Count(thread->ref->c) <= 1)
   {
    break;
   }

   Wait(thread->release_event, 256);
  }

  ReleaseThread(thread);







  LockSk(thread_pool);
  {
   Push(thread_pool, t);
  }
  UnlockSk(thread_pool);

  Dec(thread_count);
 }
}
