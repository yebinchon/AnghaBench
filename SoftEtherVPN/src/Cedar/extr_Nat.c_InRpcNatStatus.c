
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HubName; void* IsRawIpMode; void* IsKernelMode; void* NumDhcpClients; void* NumDnsSessions; void* NumIcmpSessions; void* NumUdpSessions; void* NumTcpSessions; } ;
typedef TYPE_1__ RPC_NAT_STATUS ;
typedef int PACK ;


 void* PackGetBool (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcNatStatus(RPC_NAT_STATUS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_NAT_STATUS));
 t->NumTcpSessions = PackGetInt(p, "NumTcpSessions");
 t->NumUdpSessions = PackGetInt(p, "NumUdpSessions");
 t->NumIcmpSessions = PackGetInt(p, "NumIcmpSessions");
 t->NumDnsSessions = PackGetInt(p, "NumDnsSessions");
 t->NumDhcpClients = PackGetInt(p, "NumDhcpClients");
 t->IsKernelMode = PackGetBool(p, "IsKernelMode");
 t->IsRawIpMode = PackGetBool(p, "IsRawIpMode");
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
}
