
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {int NumPort; int NumFarmHub; void* Weight; void* NumTcpConnections; void* NumSessions; TYPE_1__* FarmHubs; int ServerCert; int * Ports; void* Point; int Hostname; int Ip; int ConnectedTime; int Controller; void* Id; } ;
struct TYPE_5__ {int DynamicHub; int HubName; } ;
typedef TYPE_2__ RPC_FARM_INFO ;
typedef int RPC_FARM_HUB ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 int PackGetBoolEx (int *,char*,size_t) ;
 void* PackGetIndexCount (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 int PackGetInt64 (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetIp32 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int PackGetX (int *,char*) ;
 int Zero (TYPE_2__*,int) ;
 void* ZeroMalloc (int) ;

void InRpcFarmInfo(RPC_FARM_INFO *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_FARM_INFO));
 t->Id = PackGetInt(p, "Id");
 t->Controller = PackGetBool(p, "Controller");
 t->ConnectedTime = PackGetInt64(p, "ConnectedTime");
 t->Ip = PackGetIp32(p, "Ip");
 PackGetStr(p, "Hostname", t->Hostname, sizeof(t->Hostname));
 t->Point = PackGetInt(p, "Point");
 t->NumPort = PackGetIndexCount(p, "Ports");
 t->Ports = ZeroMalloc(sizeof(UINT) * t->NumPort);
 for (i = 0;i < t->NumPort;i++)
 {
  t->Ports[i] = PackGetIntEx(p, "Ports", i);
 }
 t->ServerCert = PackGetX(p, "ServerCert");
 t->NumFarmHub = PackGetIndexCount(p, "HubName");
 t->FarmHubs = ZeroMalloc(sizeof(RPC_FARM_HUB) * t->NumFarmHub);
 for (i = 0;i < t->NumFarmHub;i++)
 {
  PackGetStrEx(p, "HubName", t->FarmHubs[i].HubName, sizeof(t->FarmHubs[i].HubName), i);
  t->FarmHubs[i].DynamicHub = PackGetBoolEx(p, "DynamicHub", i);
 }
 t->NumSessions = PackGetInt(p, "NumSessions");
 t->NumTcpConnections = PackGetInt(p, "NumTcpConnections");
 t->Weight = PackGetInt(p, "Weight");
}
