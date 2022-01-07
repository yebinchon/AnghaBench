
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IsRawIpMode; int IsKernelMode; int NumDhcpClients; int NumDnsSessions; int NumIcmpSessions; int NumUdpSessions; int NumTcpSessions; int HubName; } ;
typedef TYPE_1__ RPC_NAT_STATUS ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcNatStatus(PACK *p, RPC_NAT_STATUS *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddInt(p, "NumTcpSessions", t->NumTcpSessions);
 PackAddInt(p, "NumUdpSessions", t->NumUdpSessions);
 PackAddInt(p, "NumIcmpSessions", t->NumIcmpSessions);
 PackAddInt(p, "NumDnsSessions", t->NumDnsSessions);
 PackAddInt(p, "NumDhcpClients", t->NumDhcpClients);
 PackAddBool(p, "IsKernelMode", t->IsKernelMode);
 PackAddBool(p, "IsRawIpMode", t->IsRawIpMode);
}
