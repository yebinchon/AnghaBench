
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int PoolThread; int ref; int Name; void* release_event; struct TYPE_9__* PoolHostThread; int PoolWaitList; void* init_finished_event; int * pData; void* param; int * thread_proc; } ;
struct TYPE_8__ {void* InitFinishEvent; void* Event; TYPE_2__* Thread; int * ThreadProc; } ;
typedef int THREAD_PROC ;
typedef TYPE_1__ THREAD_POOL_DATA ;
typedef TYPE_2__ THREAD ;


 int AddRef (int ) ;
 int CopyStr (char*) ;
 int INFINITE ;
 int Inc (int ) ;
 int IsEmptyStr (char*) ;
 int LockSk (int ) ;
 void* NewEvent () ;
 int NewList (int *) ;
 int NewRef () ;
 TYPE_2__* NewThreadInternal (int ,TYPE_1__*) ;
 TYPE_2__* Pop (int ) ;
 int Set (void*) ;
 int ThreadPoolProc ;
 int UnlockSk (int ) ;
 int Wait (void*,int ) ;
 int WaitThreadInitInternal (TYPE_2__*) ;
 void* ZeroMalloc (int) ;
 int current_num_thread ;
 int thread_count ;
 int thread_pool ;

THREAD *NewThreadNamed(THREAD_PROC *thread_proc, void *param, char *name)
{
 THREAD *host = ((void*)0);
 THREAD_POOL_DATA *pd = ((void*)0);
 THREAD *ret;

 if (thread_proc == ((void*)0))
 {
  return ((void*)0);
 }

 Inc(thread_count);

 LockSk(thread_pool);
 {

  host = Pop(thread_pool);
 }
 UnlockSk(thread_pool);

 if (host == ((void*)0))
 {

  pd = ZeroMalloc(sizeof(THREAD_POOL_DATA));
  pd->Event = NewEvent();
  pd->InitFinishEvent = NewEvent();
  host = NewThreadInternal(ThreadPoolProc, pd);
  WaitThreadInitInternal(host);
 }
 else
 {
  pd = (THREAD_POOL_DATA *)host->param;
 }


 ret = ZeroMalloc(sizeof(THREAD));
 ret->ref = NewRef();
 ret->thread_proc = thread_proc;
 ret->param = param;
 ret->pData = ((void*)0);
 ret->init_finished_event = NewEvent();
 ret->PoolThread = 1;
 ret->PoolWaitList = NewList(((void*)0));
 ret->PoolHostThread = host;
 ret->release_event = NewEvent();

 if (IsEmptyStr(name) == 0)
 {
  ret->Name = CopyStr(name);
 }


 pd->ThreadProc = thread_proc;
 pd->Thread = ret;
 AddRef(ret->ref);

 Set(pd->Event);

 Wait(pd->InitFinishEvent, INFINITE);

 current_num_thread++;



 return ret;
}
