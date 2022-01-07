
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int ref; } ;
struct TYPE_9__ {int PoolWaitList; scalar_t__ PoolHalting; } ;
typedef TYPE_1__ THREAD ;
typedef TYPE_2__ EVENT ;


 int AddRef (int ) ;
 scalar_t__ Delete (int ,TYPE_2__*) ;
 int Insert (int ,TYPE_2__*) ;
 int LockList (int ) ;
 TYPE_2__* NewEvent () ;
 int ReleaseEvent (TYPE_2__*) ;
 int UnlockList (int ) ;
 int Wait (TYPE_2__*,int ) ;

bool WaitThread(THREAD *t, UINT timeout)
{
 bool ret = 0;
 EVENT *e = ((void*)0);

 if (t == ((void*)0))
 {
  return 0;
 }

 LockList(t->PoolWaitList);
 {
  if (t->PoolHalting)
  {

   ret = 1;
  }
  else
  {

   e = NewEvent();
   AddRef(e->ref);
   Insert(t->PoolWaitList, e);
  }
 }
 UnlockList(t->PoolWaitList);

 if (e != ((void*)0))
 {

  ret = Wait(e, timeout);

  LockList(t->PoolWaitList);
  {
   if (Delete(t->PoolWaitList, e))
   {
    ReleaseEvent(e);
   }
  }
  UnlockList(t->PoolWaitList);

  ReleaseEvent(e);
 }

 return ret;
}
