
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumSession; TYPE_1__* Sessions; int HubName; } ;
struct TYPE_4__ {int LastCommTime; int CreatedTime; int LastCommDormant; int IsDormant; int IsDormantEnabled; int UniqueId; int VLanId; int Client_MonitorMode; int Client_BridgeMode; int Layer3Mode; int BridgeMode; int SecureNATMode; int LinkMode; int RemoteHostname; int RemoteSession; int PacketNum; int PacketSize; int CurrentNumTcp; int MaxNumTcp; int Hostname; int ClientIP; int Ip; int Username; int Name; } ;
typedef TYPE_1__ RPC_ENUM_SESSION_ITEM ;
typedef TYPE_2__ RPC_ENUM_SESSION ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddDataEx (int *,char*,int ,int,size_t,size_t) ;
 int PackAddInt64Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddIpEx (int *,char*,int *,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumSession(PACK *p, RPC_ENUM_SESSION *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }
 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "SessionList");
 for (i = 0;i < t->NumSession;i++)
 {
  RPC_ENUM_SESSION_ITEM *e = &t->Sessions[i];

  PackAddStrEx(p, "Name", e->Name, i, t->NumSession);
  PackAddStrEx(p, "Username", e->Username, i, t->NumSession);
  PackAddIp32Ex(p, "Ip", e->Ip, i, t->NumSession);
  PackAddIpEx(p, "ClientIP", &e->ClientIP, i, t->NumSession);
  PackAddStrEx(p, "Hostname", e->Hostname, i, t->NumSession);
  PackAddIntEx(p, "MaxNumTcp", e->MaxNumTcp, i, t->NumSession);
  PackAddIntEx(p, "CurrentNumTcp", e->CurrentNumTcp, i, t->NumSession);
  PackAddInt64Ex(p, "PacketSize", e->PacketSize, i, t->NumSession);
  PackAddInt64Ex(p, "PacketNum", e->PacketNum, i, t->NumSession);
  PackAddBoolEx(p, "RemoteSession", e->RemoteSession, i, t->NumSession);
  PackAddStrEx(p, "RemoteHostname", e->RemoteHostname, i, t->NumSession);
  PackAddBoolEx(p, "LinkMode", e->LinkMode, i, t->NumSession);
  PackAddBoolEx(p, "SecureNATMode", e->SecureNATMode, i, t->NumSession);
  PackAddBoolEx(p, "BridgeMode", e->BridgeMode, i, t->NumSession);
  PackAddBoolEx(p, "Layer3Mode", e->Layer3Mode, i, t->NumSession);
  PackAddBoolEx(p, "Client_BridgeMode", e->Client_BridgeMode, i, t->NumSession);
  PackAddBoolEx(p, "Client_MonitorMode", e->Client_MonitorMode, i, t->NumSession);
  PackAddIntEx(p, "VLanId", e->VLanId, i, t->NumSession);
  PackAddDataEx(p, "UniqueId", e->UniqueId, sizeof(e->UniqueId), i, t->NumSession);
  PackAddBoolEx(p, "IsDormantEnabled", e->IsDormantEnabled, i, t->NumSession);
  PackAddBoolEx(p, "IsDormant", e->IsDormant, i, t->NumSession);
  PackAddTime64Ex(p, "LastCommDormant", e->LastCommDormant, i, t->NumSession);
  PackAddTime64Ex(p, "CreatedTime", e->CreatedTime, i, t->NumSession);
  PackAddTime64Ex(p, "LastCommTime", e->LastCommTime, i, t->NumSession);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
