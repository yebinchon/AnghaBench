
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumFarm; TYPE_1__* Farms; } ;
struct TYPE_4__ {int AssignedBridgeLicense; int AssignedClientLicense; int NumHubs; int NumTcpConnections; int NumSessions; int Point; int Hostname; int Ip; int ConnectedTime; int Controller; int Id; } ;
typedef TYPE_1__ RPC_ENUM_FARM_ITEM ;
typedef TYPE_2__ RPC_ENUM_FARM ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumFarm(PACK *p, RPC_ENUM_FARM *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackSetCurrentJsonGroupName(p, "FarmMemberList");
 for (i = 0;i < t->NumFarm;i++)
 {
  RPC_ENUM_FARM_ITEM *e = &t->Farms[i];

  PackAddIntEx(p, "Id", e->Id, i, t->NumFarm);
  PackAddBoolEx(p, "Controller", e->Controller, i, t->NumFarm);
  PackAddTime64Ex(p, "ConnectedTime", e->ConnectedTime, i, t->NumFarm);
  PackAddIp32Ex(p, "Ip", e->Ip, i, t->NumFarm);
  PackAddStrEx(p, "Hostname", e->Hostname, i, t->NumFarm);
  PackAddIntEx(p, "Point", e->Point, i, t->NumFarm);
  PackAddIntEx(p, "NumSessions", e->NumSessions, i, t->NumFarm);
  PackAddIntEx(p, "NumTcpConnections", e->NumTcpConnections, i, t->NumFarm);
  PackAddIntEx(p, "NumHubs", e->NumHubs, i, t->NumFarm);
  PackAddIntEx(p, "AssignedClientLicense", e->AssignedClientLicense, i, t->NumFarm);
  PackAddIntEx(p, "AssignedBridgeLicense", e->AssignedBridgeLicense, i, t->NumFarm);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
