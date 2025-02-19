
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_19__ {TYPE_1__* Server; } ;
struct TYPE_18__ {int AssignedClientLicense; int AssignedBridgeLicense; int CurrentTcpConnections; int CurrentSessions; int CreatedTick; } ;
struct TYPE_17__ {int Ip; int HubList; void* AssignedClientLicense; void* AssignedBridgeLicense; void* NumTcpConnections; void* NumSessions; int Point; int hostname; int ConnectedTime; scalar_t__ Me; } ;
struct TYPE_16__ {int NumFarm; TYPE_2__* Farms; } ;
struct TYPE_15__ {int Ip; void* NumHubs; void* AssignedClientLicense; void* AssignedBridgeLicense; void* NumTcpConnections; void* NumSessions; int Point; int Hostname; int ConnectedTime; scalar_t__ Controller; int Id; } ;
struct TYPE_14__ {scalar_t__ ServerType; int FarmMemberList; TYPE_5__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ENUM_FARM_ITEM ;
typedef TYPE_3__ RPC_ENUM_FARM ;
typedef TYPE_4__ FARM_MEMBER ;
typedef TYPE_5__ CEDAR ;
typedef TYPE_6__ ADMIN ;


 void* Count (int ) ;
 size_t ERR_NOT_FARM_CONTROLLER ;
 size_t ERR_NO_ERROR ;
 int FreeRpcEnumFarm (TYPE_3__*) ;
 int GetMachineName (int ,int) ;
 TYPE_4__* LIST_DATA (int ,size_t) ;
 void* LIST_NUM (int ) ;
 int LockList (int ) ;
 int POINTER_TO_KEY (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int StrCpy (int ,int,int ) ;
 int TickToTime (int ) ;
 int UnlockList (int ) ;
 int Zero (TYPE_3__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

UINT StEnumFarmMember(ADMIN *a, RPC_ENUM_FARM *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT i;

 FreeRpcEnumFarm(t);
 Zero(t, sizeof(RPC_ENUM_FARM));

 if (s->ServerType != SERVER_TYPE_FARM_CONTROLLER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

 Zero(t, sizeof(RPC_ENUM_FARM));

 LockList(s->FarmMemberList);
 {
  t->NumFarm = LIST_NUM(s->FarmMemberList);
  t->Farms = ZeroMalloc(sizeof(RPC_ENUM_FARM_ITEM) * t->NumFarm);

  for (i = 0;i < t->NumFarm;i++)
  {
   FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);
   RPC_ENUM_FARM_ITEM *e = &t->Farms[i];

   e->Id = POINTER_TO_KEY(f);
   e->Controller = f->Me;

   if (e->Controller)
   {
    e->ConnectedTime = TickToTime(c->CreatedTick);
    e->Ip = 0x0100007f;
    GetMachineName(e->Hostname, sizeof(e->Hostname));
    e->Point = f->Point;
    e->NumSessions = Count(c->CurrentSessions);
    e->NumTcpConnections = Count(c->CurrentTcpConnections);

    e->AssignedBridgeLicense = Count(c->AssignedBridgeLicense);
    e->AssignedClientLicense = Count(c->AssignedClientLicense);
   }
   else
   {
    e->ConnectedTime = f->ConnectedTime;
    e->Ip = f->Ip;
    StrCpy(e->Hostname, sizeof(e->Hostname), f->hostname);
    e->Point = f->Point;
    e->NumSessions = f->NumSessions;
    e->NumTcpConnections = f->NumTcpConnections;

    e->AssignedBridgeLicense = f->AssignedBridgeLicense;
    e->AssignedClientLicense = f->AssignedClientLicense;
   }
   e->NumHubs = LIST_NUM(f->HubList);
  }
 }
 UnlockList(s->FarmMemberList);

 return ERR_NO_ERROR;
}
