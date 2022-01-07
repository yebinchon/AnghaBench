
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef scalar_t__ UINT64 ;
typedef size_t UINT ;
struct TYPE_28__ {TYPE_10__* SessionList; TYPE_1__* Option; } ;
struct TYPE_27__ {int NumSession; TYPE_7__* Sessions; } ;
struct TYPE_26__ {int IsDormantEnabled; int IsDormant; int RemoteHostname; scalar_t__ LastCommDormant; int UniqueId; int Client_MonitorMode; int Client_BridgeMode; int PacketNum; int PacketSize; int CurrentNumTcp; int VLanId; int Layer3Mode; int BridgeMode; int SecureNATMode; int LinkMode; void* LastCommTime; void* CreatedTime; int MaxNumTcp; int Hostname; int ClientIP; int Ip; int Username; int Name; } ;
struct TYPE_25__ {int Cedar; } ;
struct TYPE_23__ {int UniqueId; } ;
struct TYPE_24__ {scalar_t__ LastCommTimeForDormant; int lock; scalar_t__ NormalClient; TYPE_4__ NodeInfo; int IsMonitorMode; int IsBridgeMode; int TrafficLock; int Traffic; TYPE_3__* Connection; int VLanId; int L3SwitchMode; int BridgeMode; int SecureNATMode; int LinkModeServer; int LastCommTime; int CreatedTime; int MaxConnection; int Username; int Name; } ;
struct TYPE_22__ {TYPE_2__* Tcp; int ClientHostname; int ClientIp; } ;
struct TYPE_21__ {TYPE_10__* TcpSockList; } ;
struct TYPE_20__ {scalar_t__ DetectDormantSessionInterval; } ;
struct TYPE_19__ {int num_item; } ;
typedef TYPE_5__ SESSION ;
typedef TYPE_6__ SERVER ;
typedef TYPE_7__ RPC_ENUM_SESSION_ITEM ;
typedef TYPE_8__ RPC_ENUM_SESSION ;
typedef TYPE_9__ HUB ;


 int Copy (int ,int ,int) ;
 int CopyIP (int *,int *) ;
 TYPE_9__* GetHub (int ,char*) ;
 int GetMachineName (int ,int) ;
 int GetTrafficPacketNum (int ) ;
 int GetTrafficPacketSize (int ) ;
 int IPToUINT (int *) ;
 TYPE_5__* LIST_DATA (TYPE_10__*,size_t) ;
 int LIST_NUM (TYPE_10__*) ;
 int Lock (int ) ;
 int LockHubList (int ) ;
 int LockList (TYPE_10__*) ;
 int ReleaseHub (TYPE_9__*) ;
 int StrCpy (int ,int,int ) ;
 scalar_t__ Tick64 () ;
 void* Tick64ToTime64 (int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int ) ;
 int UnlockList (TYPE_10__*) ;
 void* ZeroMalloc (int) ;

void SiEnumLocalSession(SERVER *s, char *hubname, RPC_ENUM_SESSION *t)
{
 HUB *h;
 UINT64 now = Tick64();
 UINT64 dormant_interval = 0;

 if (s == ((void*)0) || hubname == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 LockHubList(s->Cedar);
 h = GetHub(s->Cedar, hubname);
 UnlockHubList(s->Cedar);

 if (h == ((void*)0))
 {
  t->NumSession = 0;
  t->Sessions = ZeroMalloc(0);
  return;
 }

 if (h->Option != ((void*)0))
 {
  dormant_interval = h->Option->DetectDormantSessionInterval * (UINT64)1000;
 }

 LockList(h->SessionList);
 {
  UINT i;
  t->NumSession = LIST_NUM(h->SessionList);
  t->Sessions = ZeroMalloc(sizeof(RPC_ENUM_SESSION_ITEM) * t->NumSession);

  for (i = 0;i < t->NumSession;i++)
  {
   SESSION *s = LIST_DATA(h->SessionList, i);
   RPC_ENUM_SESSION_ITEM *e = &t->Sessions[i];
   Lock(s->lock);
   {
    StrCpy(e->Name, sizeof(e->Name), s->Name);
    StrCpy(e->Username, sizeof(e->Username), s->Username);
    e->Ip = IPToUINT(&s->Connection->ClientIp);
    CopyIP(&e->ClientIP, &s->Connection->ClientIp);
    StrCpy(e->Hostname, sizeof(e->Hostname), s->Connection->ClientHostname);
    e->MaxNumTcp = s->MaxConnection;
    e->CreatedTime = Tick64ToTime64(s->CreatedTime);
    e->LastCommTime = Tick64ToTime64(s->LastCommTime);
    e->LinkMode = s->LinkModeServer;
    e->SecureNATMode = s->SecureNATMode;
    e->BridgeMode = s->BridgeMode;
    e->Layer3Mode = s->L3SwitchMode;
    e->VLanId = s->VLanId;
    LockList(s->Connection->Tcp->TcpSockList);
    {
     e->CurrentNumTcp = s->Connection->Tcp->TcpSockList->num_item;
    }
    UnlockList(s->Connection->Tcp->TcpSockList);
    Lock(s->TrafficLock);
    {
     e->PacketSize = GetTrafficPacketSize(s->Traffic);
     e->PacketNum = GetTrafficPacketNum(s->Traffic);
    }
    Unlock(s->TrafficLock);
    e->Client_BridgeMode = s->IsBridgeMode;
    e->Client_MonitorMode = s->IsMonitorMode;
    Copy(e->UniqueId, s->NodeInfo.UniqueId, 16);

    if (s->NormalClient)
    {
     e->IsDormantEnabled = (dormant_interval == 0 ? 0 : 1);
     if (e->IsDormantEnabled)
     {
      if (s->LastCommTimeForDormant == 0)
      {
       e->LastCommDormant = (UINT64)0x7FFFFFFF;
      }
      else
      {
       e->LastCommDormant = now - s->LastCommTimeForDormant;
      }
      if (s->LastCommTimeForDormant == 0)
      {
       e->IsDormant = 1;
      }
      else
      {
       if ((s->LastCommTimeForDormant + dormant_interval) < now)
       {
        e->IsDormant = 1;
       }
      }
     }
    }
   }
   Unlock(s->lock);

   GetMachineName(e->RemoteHostname, sizeof(e->RemoteHostname));
  }
 }
 UnlockList(h->SessionList);

 ReleaseHub(h);
}
