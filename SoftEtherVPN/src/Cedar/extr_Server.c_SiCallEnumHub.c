
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int name ;
typedef int hubname ;
struct TYPE_31__ {TYPE_1__* Group; int lock; int Traffic; } ;
typedef TYPE_2__ USER ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_35__ {int * HubList; scalar_t__ AssignedClientLicense; scalar_t__ AssignedBridgeLicense; int TrafficLock; int Traffic; scalar_t__ CurrentTcpConnections; scalar_t__ CurrentSessions; } ;
struct TYPE_34__ {scalar_t__ SystemId; int * RandomKey; void* AssignedClientLicense; void* AssignedBridgeLicense; int Traffic; void* NumTcpConnections; void* MaxSessions; void* NumSessions; void* Point; int hostname; int * HubList; scalar_t__ Me; } ;
struct TYPE_33__ {int DynamicHub; char* Name; scalar_t__ Type; int Offline; scalar_t__ LastCommTime; int TrafficLock; int Traffic; int lock; scalar_t__ NumMacTables; scalar_t__ NumIpTables; scalar_t__ NumSessionsBridge; scalar_t__ NumSessionsClient; scalar_t__ NumSessions; TYPE_6__* FarmMember; int * IpTable; int MacHashTable; int * SessionList; } ;
struct TYPE_32__ {int * FarmMemberList; int MyRandomKey; TYPE_7__* Cedar; } ;
struct TYPE_30__ {int lock; int Traffic; } ;
typedef int TRAFFIC ;
typedef TYPE_3__ SERVER ;
typedef int PACK ;
typedef int LIST ;
typedef TYPE_4__ HUB_LIST ;
typedef TYPE_4__ HUB ;
typedef TYPE_6__ FARM_MEMBER ;
typedef TYPE_7__ CEDAR ;


 TYPE_2__* AcGetUser (TYPE_4__*,char*) ;
 int AcLock (TYPE_4__*) ;
 int AcUnlock (TYPE_4__*) ;
 int Add (int *,TYPE_4__*) ;
 int AddTraffic (int ,int *) ;
 int Copy (int *,int ,int) ;
 scalar_t__ Count (scalar_t__) ;
 int Debug (char*,char*,...) ;
 int Delete (int *,TYPE_4__*) ;
 int DeleteAll (int *) ;
 int Free (TYPE_4__*) ;
 int FreePack (int *) ;
 TYPE_4__* GetHub (TYPE_7__*,char*) ;
 void* GetServerCapsInt (TYPE_3__*,char*) ;
 scalar_t__ HASH_LIST_NUM (int ) ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 int InRpcTraffic (int *,int *) ;
 int InRpcTrafficEx (int *,int *,scalar_t__) ;
 int IsZero (int *,int) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int Lock (int ) ;
 int LockHashList (int ) ;
 int LockList (int *) ;
 int MAX_SIZE ;
 int * NewListFast (int *) ;
 int * NewPack () ;
 int PackAddDataEx (int *,char*,int *,int,scalar_t__,scalar_t__) ;
 int PackAddInt (int *,char*,scalar_t__) ;
 int PackAddInt64Ex (int *,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int PackGetData (int *,char*,int *) ;
 int PackGetDataSize (int *,char*) ;
 scalar_t__ PackGetIndexCount (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 scalar_t__ PackGetInt64 (int *,char*) ;
 scalar_t__ PackGetInt64Ex (int *,char*,scalar_t__) ;
 scalar_t__ PackGetIntEx (int *,char*,scalar_t__) ;
 int PackGetStrEx (int *,char*,char*,int,scalar_t__) ;
 int ReleaseHub (TYPE_4__*) ;
 int ReleaseList (int *) ;
 int ReleaseUser (TYPE_2__*) ;
 int SHA1_SIZE ;
 int SiCallDeleteHub (TYPE_3__*,TYPE_6__*,TYPE_4__*) ;
 int * SiCallTask (TYPE_6__*,int *,char*) ;
 int SiDelHubCreateHistory (TYPE_3__*,char*) ;
 void* SiGetPoint (TYPE_3__*) ;
 int SiIsHubRegistedOnCreateHistory (TYPE_3__*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ TRAFFIC_DIFF_HUB ;
 int Unlock (int ) ;
 int UnlockHashList (int ) ;
 int UnlockList (int *) ;
 TYPE_4__* ZeroMalloc (int) ;

void SiCallEnumHub(SERVER *s, FARM_MEMBER *f)
{
 CEDAR *c;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 c = s->Cedar;

 if (f->Me)
 {


  LockList(f->HubList);
  {

   UINT i;
   LIST *o = NewListFast(((void*)0));
   for (i = 0;i < LIST_NUM(f->HubList);i++)
   {
    HUB_LIST *h = LIST_DATA(f->HubList, i);
    if (h->DynamicHub == 0)
    {
     Add(o, h);
    }
   }


   for (i = 0;i < LIST_NUM(o);i++)
   {
    HUB_LIST *h = LIST_DATA(o, i);
    Free(h);
    Delete(f->HubList, h);
   }
   ReleaseList(o);


   o = NewListFast(((void*)0));
   for (i = 0;i < LIST_NUM(f->HubList);i++)
   {
    HUB_LIST *h = LIST_DATA(f->HubList, i);
    if (h->DynamicHub == 1)
    {
     LockList(c->HubList);
     {
      HUB *hub = GetHub(s->Cedar, h->Name);
      if (hub != ((void*)0))
      {
       if (Count(hub->NumSessions) == 0 || hub->Type != HUB_TYPE_FARM_DYNAMIC)
       {
        Add(o, h);
       }
       ReleaseHub(hub);
      }
     }
     UnlockList(c->HubList);
    }
   }

   for (i = 0;i < LIST_NUM(o);i++)
   {
    HUB_LIST *h = LIST_DATA(o, i);
    Debug("Delete HUB: %s\n", h->Name);
    Free(h);
    Delete(f->HubList, h);
   }

   ReleaseList(o);


   LockList(c->HubList);
   {
    for (i = 0;i < LIST_NUM(c->HubList);i++)
    {
     HUB *h = LIST_DATA(c->HubList, i);
     if (h->Offline == 0)
     {
      if (h->Type == HUB_TYPE_FARM_STATIC)
      {
       HUB_LIST *hh = ZeroMalloc(sizeof(HUB_LIST));
       hh->FarmMember = f;
       hh->DynamicHub = 0;
       StrCpy(hh->Name, sizeof(hh->Name), h->Name);
       Add(f->HubList, hh);

       LockList(h->SessionList);
       {
        hh->NumSessions = LIST_NUM(h->SessionList);
        hh->NumSessionsBridge = Count(h->NumSessionsBridge);
        hh->NumSessionsClient = Count(h->NumSessionsClient);
       }
       UnlockList(h->SessionList);

       LockHashList(h->MacHashTable);
       {
        hh->NumMacTables = HASH_LIST_NUM(h->MacHashTable);
       }
       UnlockHashList(h->MacHashTable);

       LockList(h->IpTable);
       {
        hh->NumIpTables = LIST_NUM(h->IpTable);
       }
       UnlockList(h->IpTable);
      }
     }
    }
   }
   UnlockList(c->HubList);
  }
  UnlockList(f->HubList);


  f->Point = SiGetPoint(s);
  f->NumSessions = Count(s->Cedar->CurrentSessions);
  f->MaxSessions = GetServerCapsInt(s, "i_max_sessions");
  f->NumTcpConnections = Count(s->Cedar->CurrentTcpConnections);

  Lock(s->Cedar->TrafficLock);
  {
   Copy(&f->Traffic, s->Cedar->Traffic, sizeof(TRAFFIC));
  }
  Unlock(s->Cedar->TrafficLock);

  f->AssignedBridgeLicense = Count(s->Cedar->AssignedBridgeLicense);
  f->AssignedClientLicense = Count(s->Cedar->AssignedClientLicense);

  Copy(f->RandomKey, s->MyRandomKey, SHA1_SIZE);


  Debug("Server %s: Point %u\n", f->hostname, f->Point);
 }
 else
 {

  PACK *p = NewPack();
  UINT i, num, j;
  LIST *o = NewListFast(((void*)0));

  num = 0;

  for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
  {
   FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

   if (IsZero(f->RandomKey, SHA1_SIZE) == 0 && f->SystemId != 0)
   {
    num++;
   }
  }

  j = 0;

  for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
  {
   FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

   if (IsZero(f->RandomKey, SHA1_SIZE) == 0 && f->SystemId != 0)
   {
    PackAddDataEx(p, "MemberRandomKey", f->RandomKey, SHA1_SIZE, j, num);
    PackAddInt64Ex(p, "MemberSystemId", f->SystemId, j, num);
    j++;
   }
  }
  PackAddInt(p, "MemberSystemIdNum", num);

  p = SiCallTask(f, p, "enumhub");
  if (p != ((void*)0))
  {
   LockList(f->HubList);
   {
    UINT i;

    for (i = 0;i < LIST_NUM(f->HubList);i++)
    {
     HUB_LIST *hh = LIST_DATA(f->HubList, i);
     Free(hh);
    }
    DeleteAll(f->HubList);

    for (i = 0;i < PackGetIndexCount(p, "HubName");i++)
    {
     HUB_LIST *hh = ZeroMalloc(sizeof(HUB_LIST));
     UINT num;
     UINT64 LastCommTime;

     PackGetStrEx(p, "HubName", hh->Name, sizeof(hh->Name), i);
     num = PackGetIntEx(p, "NumSession", i);
     hh->DynamicHub = ((PackGetIntEx(p, "HubType", i) == HUB_TYPE_FARM_DYNAMIC) ? 1 : 0);
     hh->FarmMember = f;
     hh->NumSessions = PackGetIntEx(p, "NumSessions", i);
     hh->NumSessionsClient = PackGetIntEx(p, "NumSessionsClient", i);
     hh->NumSessionsBridge = PackGetIntEx(p, "NumSessionsBridge", i);
     hh->NumIpTables = PackGetIntEx(p, "NumIpTables", i);
     hh->NumMacTables = PackGetIntEx(p, "NumMacTables", i);
     LastCommTime = PackGetInt64Ex(p, "LastCommTime", i);
     Add(f->HubList, hh);


     LockList(c->HubList);
     {
      HUB *h = GetHub(c, hh->Name);

      if (h != ((void*)0))
      {

       Lock(h->lock);
       {
        if (h->LastCommTime < LastCommTime)
        {
         h->LastCommTime = LastCommTime;
        }
       }
       Unlock(h->lock);

       ReleaseHub(h);
      }
     }
     UnlockList(c->HubList);

     if (hh->DynamicHub && num >= 1)
     {



      SiDelHubCreateHistory(s, hh->Name);
     }

     if (hh->DynamicHub && num == 0)
     {




      if (SiIsHubRegistedOnCreateHistory(s, hh->Name) == 0)
      {

       HUB *h;
       LockList(c->HubList);
       {
        h = GetHub(c, hh->Name);
       }
       UnlockList(c->HubList);

       if (h != ((void*)0))
       {
        Add(o, h);
       }
      }
     }
    }
   }
   UnlockList(f->HubList);
   f->Point = PackGetInt(p, "Point");
   Debug("Server %s: Point %u\n", f->hostname, f->Point);
   f->NumSessions = PackGetInt(p, "NumTotalSessions");
   if (f->NumSessions == 0)
   {
    f->NumSessions = PackGetInt(p, "NumSessions");
   }
   f->MaxSessions = PackGetInt(p, "MaxSessions");
   f->NumTcpConnections = PackGetInt(p, "NumTcpConnections");
   InRpcTraffic(&f->Traffic, p);

   f->AssignedBridgeLicense = PackGetInt(p, "AssignedBridgeLicense");
   f->AssignedClientLicense = PackGetInt(p, "AssignedClientLicense");

   if (PackGetDataSize(p, "RandomKey") == SHA1_SIZE)
   {
    PackGetData(p, "RandomKey", f->RandomKey);
   }

   f->SystemId = PackGetInt64(p, "SystemId");


   num = PackGetIndexCount(p, "TdType");
   for (i = 0;i < num;i++)
   {
    TRAFFIC traffic;
    UINT type;
    HUB *h;
    char name[MAX_SIZE];
    char hubname[MAX_SIZE];

    type = PackGetIntEx(p, "TdType", i);
    PackGetStrEx(p, "TdName", name, sizeof(name), i);
    PackGetStrEx(p, "TdHubName", hubname, sizeof(hubname), i);
    InRpcTrafficEx(&traffic, p, i);

    LockList(c->HubList);
    {
     h = GetHub(c, hubname);
     if (h != ((void*)0))
     {
      if (type == TRAFFIC_DIFF_HUB)
      {
       Lock(h->TrafficLock);
       {
        AddTraffic(h->Traffic, &traffic);
       }
       Unlock(h->TrafficLock);
      }
      else
      {
       AcLock(h);
       {
        USER *u = AcGetUser(h, name);
        if (u != ((void*)0))
        {
         Lock(u->lock);
         {
          AddTraffic(u->Traffic, &traffic);
         }
         Unlock(u->lock);
         if (u->Group != ((void*)0))
         {
          Lock(u->Group->lock);
          {
           AddTraffic(u->Group->Traffic, &traffic);
          }
          Unlock(u->Group->lock);
         }
         ReleaseUser(u);
        }
       }
       AcUnlock(h);
      }
      ReleaseHub(h);
     }
     UnlockList(c->HubList);
    }
   }

   FreePack(p);
  }

  for (i = 0;i < LIST_NUM(o);i++)
  {
   HUB *h = LIST_DATA(o, i);
   SiCallDeleteHub(s, f, h);
   Debug("Delete HUB: %s\n", h->Name);
   ReleaseHub(h);
  }

  ReleaseList(o);
 }
}
