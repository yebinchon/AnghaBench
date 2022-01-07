
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_13__ {int TrafficDiffList; int TrafficLock; int Traffic; int AssignedBridgeLicense; int AssignedClientLicense; int CurrentSessions; int CurrentTcpConnections; int HubList; } ;
struct TYPE_12__ {scalar_t__ Type; int lock; int CreatedTime; int LastCommTime; int IpTable; int MacHashTable; int NumSessionsBridge; int NumSessionsClient; int SessionList; int NumSessions; TYPE_1__* Name; } ;
struct TYPE_11__ {int MyRandomKey; TYPE_4__* Cedar; } ;
struct TYPE_10__ {scalar_t__ Type; struct TYPE_10__* Name; struct TYPE_10__* HubName; int Traffic; } ;
typedef TYPE_1__ TRAFFIC_DIFF ;
typedef TYPE_2__ SERVER ;
typedef int PACK ;
typedef TYPE_3__ HUB ;
typedef TYPE_4__ CEDAR ;


 scalar_t__ Count (int ) ;
 int DeleteAll (int ) ;
 int Free (TYPE_1__*) ;
 scalar_t__ GetServerCapsInt (TYPE_2__*,char*) ;
 scalar_t__ HASH_LIST_NUM (int ) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int OutRpcTraffic (int *,int ) ;
 int OutRpcTrafficEx (int *,int *,scalar_t__,scalar_t__) ;
 int PackAddData (int *,char*,int ,int ) ;
 int PackAddInt (int *,char*,scalar_t__) ;
 int PackAddIntEx (int *,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int PackAddStrEx (int *,char*,TYPE_1__*,scalar_t__,scalar_t__) ;
 int PackAddTime64Ex (int *,char*,int ,scalar_t__,scalar_t__) ;
 int SHA1_SIZE ;
 scalar_t__ SiGetPoint (TYPE_2__*) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void SiCalledEnumHub(SERVER *s, PACK *p, PACK *req)
{
 UINT i;
 CEDAR *c;

 if (s == ((void*)0) || p == ((void*)0) || req == ((void*)0))
 {
  return;
 }


 c = s->Cedar;

 LockList(c->HubList);
 {
  UINT num = LIST_NUM(c->HubList);
  for (i = 0;i < num;i++)
  {
   HUB *h = LIST_DATA(c->HubList, i);
   Lock(h->lock);
   {
    PackAddStrEx(p, "HubName", h->Name, i, num);
    PackAddIntEx(p, "HubType", h->Type, i, num);
    PackAddIntEx(p, "NumSession", Count(h->NumSessions), i, num);

    PackAddIntEx(p, "NumSessions", LIST_NUM(h->SessionList), i, num);
    PackAddIntEx(p, "NumSessionsClient", Count(h->NumSessionsClient), i, num);
    PackAddIntEx(p, "NumSessionsBridge", Count(h->NumSessionsBridge), i, num);

    PackAddIntEx(p, "NumMacTables", HASH_LIST_NUM(h->MacHashTable), i, num);

    PackAddIntEx(p, "NumIpTables", LIST_NUM(h->IpTable), i, num);

    PackAddTime64Ex(p, "LastCommTime", h->LastCommTime, i, num);
    PackAddTime64Ex(p, "CreatedTime", h->CreatedTime, i, num);
   }
   Unlock(h->lock);
  }
 }
 UnlockList(c->HubList);

 PackAddInt(p, "Point", SiGetPoint(s));
 PackAddInt(p, "NumTcpConnections", Count(s->Cedar->CurrentTcpConnections));
 PackAddInt(p, "NumTotalSessions", Count(s->Cedar->CurrentSessions));
 PackAddInt(p, "MaxSessions", GetServerCapsInt(s, "i_max_sessions"));

 PackAddInt(p, "AssignedClientLicense", Count(s->Cedar->AssignedClientLicense));
 PackAddInt(p, "AssignedBridgeLicense", Count(s->Cedar->AssignedBridgeLicense));

 PackAddData(p, "RandomKey", s->MyRandomKey, SHA1_SIZE);


 Lock(c->TrafficLock);
 {
  OutRpcTraffic(p, c->Traffic);
 }
 Unlock(c->TrafficLock);

 LockList(c->TrafficDiffList);
 {
  UINT num = LIST_NUM(c->TrafficDiffList);
  UINT i;

  for (i = 0;i < num;i++)
  {
   TRAFFIC_DIFF *d = LIST_DATA(c->TrafficDiffList, i);

   PackAddIntEx(p, "TdType", d->Type, i, num);
   PackAddStrEx(p, "TdHubName", d->HubName, i, num);
   PackAddStrEx(p, "TdName", d->Name, i, num);

   OutRpcTrafficEx(&d->Traffic, p, i, num);

   Free(d->HubName);
   Free(d->Name);
   Free(d);
  }

  DeleteAll(c->TrafficDiffList);
 }
 UnlockList(c->TrafficDiffList);
}
