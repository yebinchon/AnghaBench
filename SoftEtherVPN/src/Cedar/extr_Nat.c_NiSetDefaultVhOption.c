
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int UseNat; int Mtu; int NatTcpTimeout; int NatUdpTimeout; int UseDhcp; int DhcpExpireTimeSpan; int SaveLog; int DhcpDomainName; int DhcpDnsServerAddress; int DhcpGatewayAddress; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_1__ VH_OPTION ;
typedef int NAT ;


 int GenMacAddress (int ) ;
 int GetDomainName (int ,int) ;
 int SetIP (int *,int,int,int,int) ;
 int Zero (TYPE_1__*,int) ;

void NiSetDefaultVhOption(NAT *n, VH_OPTION *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 Zero(o, sizeof(VH_OPTION));
 GenMacAddress(o->MacAddress);


 SetIP(&o->Ip, 192, 168, 30, 1);
 SetIP(&o->Mask, 255, 255, 255, 0);
 o->UseNat = 1;
 o->Mtu = 1500;
 o->NatTcpTimeout = 1800;
 o->NatUdpTimeout = 60;
 o->UseDhcp = 1;
 SetIP(&o->DhcpLeaseIPStart, 192, 168, 30, 10);
 SetIP(&o->DhcpLeaseIPEnd, 192, 168, 30, 200);
 SetIP(&o->DhcpSubnetMask, 255, 255, 255, 0);
 o->DhcpExpireTimeSpan = 7200;
 o->SaveLog = 1;

 SetIP(&o->DhcpGatewayAddress, 192, 168, 30, 1);
 SetIP(&o->DhcpDnsServerAddress, 192, 168, 30, 1);

 GetDomainName(o->DhcpDomainName, sizeof(o->DhcpDomainName));
}
