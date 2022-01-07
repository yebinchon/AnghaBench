
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_17__ {scalar_t__ Halt; } ;
struct TYPE_16__ {int HubList; } ;
struct TYPE_15__ {scalar_t__ Type; scalar_t__ Offline; } ;
struct TYPE_14__ {TYPE_9__* Session; TYPE_1__* Hub; int HubName; } ;
struct TYPE_13__ {int Active; int Halt; int Online; int Name; TYPE_5__* Cedar; int lock; int * IfList; } ;
struct TYPE_12__ {int Offline; } ;
typedef int THREAD ;
typedef int SESSION ;
typedef int LIST ;
typedef TYPE_2__ L3SW ;
typedef TYPE_3__ L3IF ;
typedef TYPE_4__ HUB ;


 TYPE_4__* GetHub (TYPE_5__*,int ) ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 int Insert (int *,TYPE_9__*) ;
 int L3FreeAllInterfaces (TYPE_2__*) ;
 int L3InitAllInterfaces (TYPE_2__*) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int * NewListFast (int *) ;
 int NoticeThreadInit (int *) ;
 int ReleaseHub (TYPE_4__*) ;
 int ReleaseList (int *) ;
 int SLog (TYPE_5__*,char*,int ) ;
 int SleepThread (int) ;
 int StopSession (int *) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void L3SwThread(THREAD *t, void *param)
{
 L3SW *s;
 bool shutdown_now = 0;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 s = (L3SW *)param;

 s->Active = 1;

 NoticeThreadInit(t);


 SLog(s->Cedar, "L3_SWITCH_START", s->Name);

 while (s->Halt == 0)
 {
  if (s->Online == 0)
  {


   LockList(s->Cedar->HubList);
   {
    Lock(s->lock);
    {
     UINT i;
     UINT n = 0;
     bool all_exists = 1;
     if (LIST_NUM(s->IfList) == 0)
     {

      all_exists = 0;
     }
     for (i = 0;i < LIST_NUM(s->IfList);i++)
     {
      L3IF *f = LIST_DATA(s->IfList, i);
      HUB *h = GetHub(s->Cedar, f->HubName);

      if (h != ((void*)0))
      {
       if (h->Offline || h->Type == HUB_TYPE_FARM_DYNAMIC)
       {
        all_exists = 0;
       }
       else
       {
        n++;
       }
       ReleaseHub(h);
      }
      else
      {
       all_exists = 0;
      }
     }

     if (all_exists && n >= 1)
     {


      SLog(s->Cedar, "L3_SWITCH_ONLINE", s->Name);
      L3InitAllInterfaces(s);
      s->Online = 1;
     }
    }
    Unlock(s->lock);
   }
   UnlockList(s->Cedar->HubList);
  }
  else
  {

   UINT i;
   bool any_halted = 0;
   LIST *o = ((void*)0);

SHUTDOWN:

   Lock(s->lock);
   {
    for (i = 0;i < LIST_NUM(s->IfList);i++)
    {
     L3IF *f = LIST_DATA(s->IfList, i);
     if (f->Session->Halt || f->Hub->Offline != 0)
     {
      any_halted = 1;
      break;
     }
    }

    if (shutdown_now)
    {
     any_halted = 1;
    }

    if (any_halted)
    {
     SLog(s->Cedar, "L3_SWITCH_OFFLINE", s->Name);
     o = NewListFast(((void*)0));

     for (i = 0;i < LIST_NUM(s->IfList);i++)
     {
      L3IF *f = LIST_DATA(s->IfList, i);
      Insert(o, f->Session);
     }


     s->Online = 0;
    }
   }
   Unlock(s->lock);

   if (o != ((void*)0))
   {
    UINT i;
    for (i = 0;i < LIST_NUM(o);i++)
    {
     SESSION *s = LIST_DATA(o, i);
     StopSession(s);
    }
    L3FreeAllInterfaces(s);
    ReleaseList(o);
    o = ((void*)0);
   }
  }

  SleepThread(50);
 }

 if (s->Online != 0)
 {
  shutdown_now = 1;
  goto SHUTDOWN;
 }


 SLog(s->Cedar, "L3_SWITCH_STOP", s->Name);
}
