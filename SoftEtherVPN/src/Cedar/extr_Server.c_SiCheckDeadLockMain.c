
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef scalar_t__ UINT ;
struct TYPE_37__ {int * lock; } ;
struct TYPE_36__ {int * lock; } ;
struct TYPE_35__ {int * lock; } ;
struct TYPE_34__ {int * lock; } ;
struct TYPE_33__ {int * lock; } ;
struct TYPE_32__ {int * lock; } ;
struct TYPE_31__ {int * lock; } ;
struct TYPE_30__ {int * lock; } ;
struct TYPE_29__ {int * lock; } ;
struct TYPE_28__ {TYPE_9__* L3SwList; TYPE_8__* LocalBridgeList; TYPE_7__* TrafficDiffList; int * TrafficLock; TYPE_6__* CaList; TYPE_5__* ConnectionList; TYPE_12__* ListenerList; TYPE_4__* HubList; } ;
struct TYPE_27__ {int * lock; } ;
struct TYPE_26__ {int ref; } ;
struct TYPE_25__ {int * TasksFromFarmControllerLock; int * CapsCacheLock; TYPE_3__* HubCreateHistoryList; TYPE_2__* FarmMemberList; int * lock; TYPE_1__* ServerListenerList; TYPE_13__* Cedar; } ;
typedef TYPE_10__ SERVER ;
typedef TYPE_11__ LISTENER ;
typedef TYPE_12__ LIST ;
typedef TYPE_13__ CEDAR ;


 int Add (TYPE_12__*,TYPE_11__*) ;
 int AddRef (int ) ;
 int CheckDeadLock (int *,scalar_t__,char*) ;
 TYPE_11__* LIST_DATA (TYPE_12__*,scalar_t__) ;
 scalar_t__ LIST_NUM (TYPE_12__*) ;
 int LockList (TYPE_12__*) ;
 TYPE_12__* NewListFast (int *) ;
 int ReleaseList (TYPE_12__*) ;
 int ReleaseListener (TYPE_11__*) ;
 int UnlockList (TYPE_12__*) ;

void SiCheckDeadLockMain(SERVER *s, UINT timeout)
{
 CEDAR *cedar;

 if (s == ((void*)0))
 {
  return;
 }




 cedar = s->Cedar;

 if (s->ServerListenerList != ((void*)0))
 {
  CheckDeadLock(s->ServerListenerList->lock, timeout, "s->ServerListenerList->lock");
 }

 CheckDeadLock(s->lock, timeout, "s->lock");

 if (s->FarmMemberList != ((void*)0))
 {
  CheckDeadLock(s->FarmMemberList->lock, timeout, "s->FarmMemberList->lock");
 }

 if (s->HubCreateHistoryList != ((void*)0))
 {
  CheckDeadLock(s->HubCreateHistoryList->lock, timeout, "s->HubCreateHistoryList->lock");
 }

 CheckDeadLock(s->CapsCacheLock, timeout, "s->CapsCacheLock");

 CheckDeadLock(s->TasksFromFarmControllerLock, timeout, "s->TasksFromFarmControllerLock");

 if (cedar != ((void*)0))
 {
  if (cedar->HubList != ((void*)0))
  {
   CheckDeadLock(cedar->HubList->lock, timeout, "cedar->HubList->lock");
  }

  if (cedar->ListenerList != ((void*)0))
  {
   UINT i;
   LIST *o = NewListFast(((void*)0));

   CheckDeadLock(cedar->ListenerList->lock, timeout, "cedar->ListenerList->lock");

   LockList(cedar->ListenerList);
   {
    for (i = 0;i < LIST_NUM(cedar->ListenerList);i++)
    {
     LISTENER *r = LIST_DATA(cedar->ListenerList, i);

     AddRef(r->ref);

     Add(o, r);
    }
   }
   UnlockList(cedar->ListenerList);

   for (i = 0;i < LIST_NUM(o);i++)
   {
    LISTENER *r = LIST_DATA(o, i);


    ReleaseListener(r);
   }

   ReleaseList(o);
  }

  if (cedar->ConnectionList != ((void*)0))
  {
   CheckDeadLock(cedar->ConnectionList->lock, timeout, "cedar->ConnectionList->lock");
  }

  if (cedar->CaList != ((void*)0))
  {
   CheckDeadLock(cedar->CaList->lock, timeout, "cedar->CaList->lock");
  }

  if (cedar->TrafficLock != ((void*)0))
  {
   CheckDeadLock(cedar->TrafficLock, timeout, "cedar->TrafficLock");
  }

  if (cedar->TrafficDiffList != ((void*)0))
  {
   CheckDeadLock(cedar->TrafficDiffList->lock, timeout, "cedar->TrafficDiffList->lock");
  }

  if (cedar->LocalBridgeList != ((void*)0))
  {
   CheckDeadLock(cedar->LocalBridgeList->lock, timeout, "cedar->LocalBridgeList->lock");
  }

  if (cedar->L3SwList != ((void*)0))
  {
   CheckDeadLock(cedar->L3SwList->lock, timeout, "cedar->L3SwList->lock");
  }
 }


}
