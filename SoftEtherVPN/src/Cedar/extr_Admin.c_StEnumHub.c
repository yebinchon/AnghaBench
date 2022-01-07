
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_25__ {int ServerAdmin; int HubName; TYPE_2__* Server; } ;
struct TYPE_24__ {int HubList; } ;
struct TYPE_23__ {int Me; int HubList; } ;
struct TYPE_22__ {int lock; int TrafficLock; int Traffic; int CreatedTime; int NumLogin; int LastLoginTime; int LastCommTime; TYPE_1__* HubDb; int IpTable; int MacHashTable; int SessionList; int Type; scalar_t__ Offline; int Name; int * Option; } ;
struct TYPE_21__ {scalar_t__ NumSessions; scalar_t__ NumMacTables; scalar_t__ NumIpTables; int Name; } ;
struct TYPE_20__ {scalar_t__ NumHub; TYPE_3__* Hubs; } ;
struct TYPE_19__ {int Online; int IsTrafficFilled; scalar_t__ NumSessions; int NumMacTables; scalar_t__ NumIpTables; int HubName; int Traffic; int CreatedTime; int NumLogin; int LastLoginTime; int LastCommTime; scalar_t__ NumGroups; scalar_t__ NumUsers; int HubType; } ;
struct TYPE_18__ {scalar_t__ ServerType; int FarmMemberList; TYPE_8__* Cedar; } ;
struct TYPE_17__ {int GroupList; int UserList; } ;
typedef int TRAFFIC ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_ENUM_HUB_ITEM ;
typedef TYPE_4__ RPC_ENUM_HUB ;
typedef TYPE_5__ HUB_LIST ;
typedef TYPE_6__ HUB ;
typedef TYPE_7__ FARM_MEMBER ;
typedef TYPE_8__ CEDAR ;
typedef TYPE_9__ ADMIN ;


 int Copy (int *,int ,int) ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeRpcEnumHub (TYPE_4__*) ;
 int HASH_LIST_NUM (int ) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockHashList (int ) ;
 int LockHubList (TYPE_8__*) ;
 int LockList (int ) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ StrCmpi (int ,int ) ;
 int StrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockHashList (int ) ;
 int UnlockHubList (TYPE_8__*) ;
 int UnlockList (int ) ;
 int Zero (TYPE_4__*,int) ;
 TYPE_3__* ZeroMalloc (int) ;

UINT StEnumHub(ADMIN *a, RPC_ENUM_HUB *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);

 FreeRpcEnumHub(t);

 Zero(t, sizeof(RPC_ENUM_HUB));

 LockHubList(c);
 {
  UINT i, num, j;

  num = 0;

  for (i = 0;i < LIST_NUM(c->HubList);i++)
  {
   HUB *h = LIST_DATA(c->HubList, i);

   Lock(h->lock);

   if (a->ServerAdmin == 0 &&
    h->Option != ((void*)0) &&
    StrCmpi(h->Name, a->HubName) != 0)
   {

   }
   else
   {

    num++;
   }
  }

  t->NumHub = num;

  t->Hubs = ZeroMalloc(sizeof(RPC_ENUM_HUB_ITEM) * num);

  i = 0;
  for (j = 0;j < LIST_NUM(c->HubList);j++)
  {
   HUB *h = LIST_DATA(c->HubList, j);

   if (a->ServerAdmin == 0 &&
    h->Option != ((void*)0) &&
    StrCmpi(h->Name, a->HubName) != 0)
   {

   }
   else
   {

    RPC_ENUM_HUB_ITEM *e = &t->Hubs[i++];

    StrCpy(e->HubName, sizeof(e->HubName), h->Name);
    e->Online = h->Offline ? 0 : 1;
    e->HubType = h->Type;

    e->NumSessions = LIST_NUM(h->SessionList);

    LockHashList(h->MacHashTable);
    {
     e->NumMacTables = HASH_LIST_NUM(h->MacHashTable);
    }
    UnlockHashList(h->MacHashTable);

    LockList(h->IpTable);
    {
     e->NumIpTables = LIST_NUM(h->IpTable);
    }
    UnlockList(h->IpTable);

    if (h->HubDb != ((void*)0))
    {
     LockList(h->HubDb->UserList);
     {
      e->NumUsers = LIST_NUM(h->HubDb->UserList);
     }
     UnlockList(h->HubDb->UserList);

     LockList(h->HubDb->GroupList);
     {
      e->NumGroups = LIST_NUM(h->HubDb->GroupList);
     }
     UnlockList(h->HubDb->GroupList);
    }

    e->LastCommTime = h->LastCommTime;
    e->LastLoginTime = h->LastLoginTime;
    e->NumLogin = h->NumLogin;
    e->CreatedTime = h->CreatedTime;

    Lock(h->TrafficLock);
    {
     Copy(&e->Traffic, h->Traffic, sizeof(TRAFFIC));
    }
    Unlock(h->TrafficLock);

    e->IsTrafficFilled = 1;
   }

   Unlock(h->lock);
  }
 }
 UnlockHubList(c);

 if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  UINT i, j, k;
  LockList(s->FarmMemberList);
  {
   for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
   {
    FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

    LockList(f->HubList);
    {
     if (f->Me == 0)
     {
      for (j = 0;j < LIST_NUM(f->HubList);j++)
      {
       HUB_LIST *o = LIST_DATA(f->HubList, j);

       for (k = 0;k < t->NumHub;k++)
       {
        RPC_ENUM_HUB_ITEM *e = &t->Hubs[k];

        if (StrCmpi(e->HubName, o->Name) == 0)
        {
         e->NumIpTables += o->NumIpTables;
         e->NumMacTables += o->NumMacTables;
         e->NumSessions += o->NumSessions;
        }
       }
      }
     }
    }
    UnlockList(f->HubList);
   }
  }
  UnlockList(s->FarmMemberList);
 }

 return ERR_NO_ERROR;
}
