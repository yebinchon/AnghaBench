
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DhcpPushRoutes; void* ApplyDhcpPushRoutes; int HubName; void* SaveLog; int DhcpDomainName; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; void* DhcpExpireTimeSpan; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; void* UseDhcp; void* NatUdpTimeout; void* NatTcpTimeout; void* Mtu; void* UseNat; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_1__ VH_OPTION ;
typedef int PACK ;


 void* PackGetBool (int *,char*) ;
 int PackGetData2 (int *,char*,int ,int) ;
 void* PackGetInt (int *,char*) ;
 int PackGetIp (int *,char*,int *) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InVhOption(VH_OPTION *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(VH_OPTION));
 PackGetData2(p, "MacAddress", t->MacAddress, 6);
 PackGetIp(p, "Ip", &t->Ip);
 PackGetIp(p, "Mask", &t->Mask);
 t->UseNat = PackGetBool(p, "UseNat");
 t->Mtu = PackGetInt(p, "Mtu");
 t->NatTcpTimeout = PackGetInt(p, "NatTcpTimeout");
 t->NatUdpTimeout = PackGetInt(p, "NatUdpTimeout");
 t->UseDhcp = PackGetBool(p, "UseDhcp");
 PackGetIp(p, "DhcpLeaseIPStart", &t->DhcpLeaseIPStart);
 PackGetIp(p, "DhcpLeaseIPEnd", &t->DhcpLeaseIPEnd);
 PackGetIp(p, "DhcpSubnetMask", &t->DhcpSubnetMask);
 t->DhcpExpireTimeSpan = PackGetInt(p, "DhcpExpireTimeSpan");
 PackGetIp(p, "DhcpGatewayAddress", &t->DhcpGatewayAddress);
 PackGetIp(p, "DhcpDnsServerAddress", &t->DhcpDnsServerAddress);
 PackGetIp(p, "DhcpDnsServerAddress2", &t->DhcpDnsServerAddress2);
 PackGetStr(p, "DhcpDomainName", t->DhcpDomainName, sizeof(t->DhcpDomainName));
 t->SaveLog = PackGetBool(p, "SaveLog");
 PackGetStr(p, "RpcHubName", t->HubName, sizeof(t->HubName));
 t->ApplyDhcpPushRoutes = PackGetBool(p, "ApplyDhcpPushRoutes");
 PackGetStr(p, "DhcpPushRoutes", t->DhcpPushRoutes, sizeof(t->DhcpPushRoutes));
}
