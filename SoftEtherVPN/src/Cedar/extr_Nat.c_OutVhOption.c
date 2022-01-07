
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int UseNat; int UseDhcp; int SaveLog; int DhcpPushRoutes; int HubName; int DhcpDomainName; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; int DhcpExpireTimeSpan; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; int NatUdpTimeout; int NatTcpTimeout; int Mtu; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_1__ VH_OPTION ;
typedef int PACK ;


 int PackAddBool (int *,char*,int) ;
 int PackAddData (int *,char*,int ,int) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddIp (int *,char*,int *) ;
 int PackAddStr (int *,char*,int ) ;

void OutVhOption(PACK *p, VH_OPTION *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddData(p, "MacAddress", t->MacAddress, 6);
 PackAddIp(p, "Ip", &t->Ip);
 PackAddIp(p, "Mask", &t->Mask);
 PackAddBool(p, "UseNat", t->UseNat);
 PackAddInt(p, "Mtu", t->Mtu);
 PackAddInt(p, "NatTcpTimeout", t->NatTcpTimeout);
 PackAddInt(p, "NatUdpTimeout", t->NatUdpTimeout);
 PackAddBool(p, "UseDhcp", t->UseDhcp);
 PackAddIp(p, "DhcpLeaseIPStart", &t->DhcpLeaseIPStart);
 PackAddIp(p, "DhcpLeaseIPEnd", &t->DhcpLeaseIPEnd);
 PackAddIp(p, "DhcpSubnetMask", &t->DhcpSubnetMask);
 PackAddInt(p, "DhcpExpireTimeSpan", t->DhcpExpireTimeSpan);
 PackAddIp(p, "DhcpGatewayAddress", &t->DhcpGatewayAddress);
 PackAddIp(p, "DhcpDnsServerAddress", &t->DhcpDnsServerAddress);
 PackAddIp(p, "DhcpDnsServerAddress2", &t->DhcpDnsServerAddress2);
 PackAddStr(p, "DhcpDomainName", t->DhcpDomainName);
 PackAddBool(p, "SaveLog", t->SaveLog);
 PackAddStr(p, "RpcHubName", t->HubName);
 PackAddBool(p, "ApplyDhcpPushRoutes", 1);
 PackAddStr(p, "DhcpPushRoutes", t->DhcpPushRoutes);
}
