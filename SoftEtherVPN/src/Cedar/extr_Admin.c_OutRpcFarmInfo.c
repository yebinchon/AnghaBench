
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumPort; size_t NumFarmHub; int Weight; int NumTcpConnections; int NumSessions; TYPE_1__* FarmHubs; int ServerCert; int * Ports; int Point; int Hostname; int Ip; int ConnectedTime; int Controller; int Id; } ;
struct TYPE_4__ {int DynamicHub; int HubName; } ;
typedef TYPE_2__ RPC_FARM_INFO ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64 (int *,char*,int ) ;
 int PackAddX (int *,char*,int ) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcFarmInfo(PACK *p, RPC_FARM_INFO *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "Id", t->Id);
 PackAddBool(p, "Controller", t->Controller);
 PackAddTime64(p, "ConnectedTime", t->ConnectedTime);
 PackAddIp32(p, "Ip", t->Ip);
 PackAddStr(p, "Hostname", t->Hostname);
 PackAddInt(p, "Point", t->Point);
 for (i = 0;i < t->NumPort;i++)
 {
  PackAddIntEx(p, "Ports", t->Ports[i], i, t->NumPort);
 }
 PackAddX(p, "ServerCert", t->ServerCert);

 PackSetCurrentJsonGroupName(p, "HubsList");
 for (i = 0;i < t->NumFarmHub;i++)
 {
  PackAddStrEx(p, "HubName", t->FarmHubs[i].HubName, i, t->NumFarmHub);
  PackAddBoolEx(p, "DynamicHub", t->FarmHubs[i].DynamicHub, i, t->NumFarmHub);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));

 PackAddInt(p, "NumSessions", t->NumSessions);
 PackAddInt(p, "NumTcpConnections", t->NumTcpConnections);
 PackAddInt(p, "Weight", t->Weight);
}
