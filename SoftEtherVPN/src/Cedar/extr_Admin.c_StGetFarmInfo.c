
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_21__ {TYPE_3__* Server; } ;
struct TYPE_20__ {int Ip; int NumPort; void* NumTcpConnections; void* NumSessions; int ServerCert; int Ports; int Point; int hostname; int ConnectedTime; int HubList; int Weight; int Me; } ;
struct TYPE_19__ {int Name; int DynamicHub; } ;
struct TYPE_18__ {int HubName; int DynamicHub; } ;
struct TYPE_17__ {size_t Id; size_t NumFarmHub; int Ip; int NumPort; void* NumTcpConnections; void* NumSessions; void* ServerCert; int * Ports; int Point; int Hostname; int ConnectedTime; int Controller; TYPE_5__* FarmHubs; int Weight; } ;
struct TYPE_16__ {scalar_t__ ServerType; int FarmMemberList; TYPE_1__* Cedar; int ServerListenerList; } ;
struct TYPE_15__ {int Port; scalar_t__ Enabled; } ;
struct TYPE_14__ {int CurrentTcpConnections; int CurrentSessions; int ServerX; int CreatedTick; } ;
typedef TYPE_2__ SERVER_LISTENER ;
typedef TYPE_3__ SERVER ;
typedef TYPE_4__ RPC_FARM_INFO ;
typedef TYPE_5__ RPC_FARM_HUB ;
typedef TYPE_6__ HUB_LIST ;
typedef TYPE_7__ FARM_MEMBER ;
typedef TYPE_8__ ADMIN ;


 void* CloneX (int ) ;
 int Copy (int *,int ,int) ;
 void* Count (int ) ;
 size_t ERR_NOT_FARM_CONTROLLER ;
 size_t ERR_NO_ERROR ;
 size_t ERR_OBJECT_NOT_FOUND ;
 int FreeRpcFarmInfo (TYPE_4__*) ;
 int GetMachineName (int ,int) ;
 scalar_t__ IsInListKey (int ,size_t) ;
 void* LIST_DATA (int ,size_t) ;
 size_t LIST_NUM (int ) ;
 TYPE_7__* ListKeyToPointer (int ,size_t) ;
 int LockList (int ) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int StrCpy (int ,int,int ) ;
 int TickToTime (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_4__*,int) ;
 void* ZeroMalloc (int) ;

UINT StGetFarmInfo(ADMIN *a, RPC_FARM_INFO *t)
{
 SERVER *s = a->Server;
 UINT id = t->Id;
 UINT i;
 UINT ret = ERR_NO_ERROR;

 FreeRpcFarmInfo(t);
 Zero(t, sizeof(RPC_FARM_INFO));

 if (s->ServerType != SERVER_TYPE_FARM_CONTROLLER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 LockList(s->FarmMemberList);
 {
  if (IsInListKey(s->FarmMemberList, id))
  {
   FARM_MEMBER *f = ListKeyToPointer(s->FarmMemberList, id);

   t->Id = id;
   t->Controller = f->Me;
   t->Weight = f->Weight;

   LockList(f->HubList);
   {
    t->NumFarmHub = LIST_NUM(f->HubList);
    t->FarmHubs = ZeroMalloc(sizeof(RPC_FARM_HUB) * t->NumFarmHub);

    for (i = 0;i < t->NumFarmHub;i++)
    {
     RPC_FARM_HUB *h = &t->FarmHubs[i];
     HUB_LIST *hh = LIST_DATA(f->HubList, i);

     h->DynamicHub = hh->DynamicHub;
     StrCpy(h->HubName, sizeof(h->HubName), hh->Name);
    }
   }
   UnlockList(f->HubList);

   if (t->Controller)
   {
    t->ConnectedTime = TickToTime(s->Cedar->CreatedTick);
    t->Ip = 0x0100007f;
    GetMachineName(t->Hostname, sizeof(t->Hostname));
    t->Point = f->Point;

    LockList(s->ServerListenerList);
    {
     UINT i, n;
     t->NumPort = 0;
     for (i = 0;i < LIST_NUM(s->ServerListenerList);i++)
     {
      SERVER_LISTENER *o = LIST_DATA(s->ServerListenerList, i);
      if (o->Enabled)
      {
       t->NumPort++;
      }
     }
     t->Ports = ZeroMalloc(sizeof(UINT) * t->NumPort);
     n = 0;
     for (i = 0;i < LIST_NUM(s->ServerListenerList);i++)
     {
      SERVER_LISTENER *o = LIST_DATA(s->ServerListenerList, i);
      if (o->Enabled)
      {
       t->Ports[n++] = o->Port;
      }
     }
    }
    UnlockList(s->ServerListenerList);

    t->ServerCert = CloneX(s->Cedar->ServerX);
    t->NumSessions = Count(s->Cedar->CurrentSessions);
    t->NumTcpConnections = Count(s->Cedar->CurrentTcpConnections);
   }
   else
   {
    t->ConnectedTime = f->ConnectedTime;
    t->Ip = f->Ip;
    StrCpy(t->Hostname, sizeof(t->Hostname), f->hostname);
    t->Point = f->Point;
    t->NumPort = f->NumPort;
    t->Ports = ZeroMalloc(sizeof(UINT) * t->NumPort);
    Copy(t->Ports, f->Ports, sizeof(UINT) * t->NumPort);
    t->ServerCert = CloneX(f->ServerCert);
    t->NumSessions = f->NumSessions;
    t->NumTcpConnections = f->NumTcpConnections;
   }
  }
  else
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
 }
 UnlockList(s->FarmMemberList);

 return ret;
}
