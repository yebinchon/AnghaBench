
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumFarm; TYPE_1__* Farms; } ;
struct TYPE_6__ {void* AssignedBridgeLicense; void* AssignedClientLicense; void* NumHubs; void* NumTcpConnections; void* NumSessions; void* Point; int Hostname; int Ip; int ConnectedTime; int Controller; void* Id; } ;
typedef TYPE_1__ RPC_ENUM_FARM_ITEM ;
typedef TYPE_2__ RPC_ENUM_FARM ;
typedef int PACK ;


 int PackGetBoolEx (int *,char*,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 int PackGetInt64Ex (int *,char*,size_t) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetIp32Ex (int *,char*,size_t) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumFarm(RPC_ENUM_FARM *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_FARM));
 t->NumFarm = PackGetIndexCount(p, "Id");
 t->Farms = ZeroMalloc(sizeof(RPC_ENUM_FARM_ITEM) * t->NumFarm);

 for (i = 0;i < t->NumFarm;i++)
 {
  RPC_ENUM_FARM_ITEM *e = &t->Farms[i];

  e->Id = PackGetIntEx(p, "Id", i);
  e->Controller = PackGetBoolEx(p, "Controller", i);
  e->ConnectedTime = PackGetInt64Ex(p, "ConnectedTime", i);
  e->Ip = PackGetIp32Ex(p, "Ip", i);
  PackGetStrEx(p, "Hostname", e->Hostname, sizeof(e->Hostname), i);
  e->Point = PackGetIntEx(p, "Point", i);
  e->NumSessions = PackGetIntEx(p, "NumSessions", i);
  e->NumTcpConnections = PackGetIntEx(p, "NumTcpConnections", i);
  e->NumHubs = PackGetIntEx(p, "NumHubs", i);
  e->AssignedClientLicense = PackGetIntEx(p, "AssignedClientLicense", i);
  e->AssignedBridgeLicense = PackGetIntEx(p, "AssignedBridgeLicense", i);
 }
}
