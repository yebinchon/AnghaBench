
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int rt ;
struct TYPE_7__ {scalar_t__* MacAddress; int Mtu; scalar_t__ NatTcpTimeout; scalar_t__ NatUdpTimeout; int DhcpExpireTimeSpan; int DhcpPushRoutes; scalar_t__ ApplyDhcpPushRoutes; int SaveLog; int DhcpDomainName; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; int UseDhcp; int UseNat; int Mask; int Ip; } ;
typedef TYPE_1__ VH_OPTION ;
struct TYPE_8__ {int Mtu; int IpMss; int TcpMss; int UdpMss; int NatTcpTimeout; int NatUdpTimeout; int DhcpExpire; int PushRoute; int SaveLog; int DhcpDomain; void* DhcpDns2; void* DhcpDns; void* DhcpGateway; void* DhcpMask; void* DhcpIpStart; void* DhcpIpEnd; int UseDhcp; int UseNat; void* HostMask; void* HostIP; int * MacAddress; } ;
typedef TYPE_2__ VH ;
typedef int UINT ;
typedef scalar_t__ DHCP_CLASSLESS_ROUTE_TABLE ;


 int Copy (int *,scalar_t__*,int) ;
 int DHCP_MIN_EXPIRE_TIMESPAN ;
 int Debug (char*,int,int) ;
 scalar_t__ Endian32 (void*) ;
 int INFINITE ;
 void* IPToUINT (int *) ;
 int IP_HEADER_SIZE ;
 int LockVirtual (TYPE_2__*) ;
 int MAC_HEADER_SIZE ;
 void* MAKESURE (int,int,int) ;
 int MAX (int,int) ;
 int MAX_L3_DATA_SIZE ;
 int MIN (int,int) ;
 int NAT_TCP_MAX_TIMEOUT ;
 int NAT_TCP_MIN_TIMEOUT ;
 int NAT_UDP_MAX_TIMEOUT ;
 int NAT_UDP_MIN_TIMEOUT ;
 scalar_t__ ParseClasslessRouteTableStr (scalar_t__*,int ) ;
 int StrCpy (int ,int,int ) ;
 int TCP_HEADER_SIZE ;
 int UDP_HEADER_SIZE ;
 int UnlockVirtual (TYPE_2__*) ;
 int Zero (scalar_t__*,int) ;

void SetVirtualHostOption(VH *v, VH_OPTION *vo)
{
 UINT i;

 if (v == ((void*)0) || vo == ((void*)0))
 {
  return;
 }

 LockVirtual(v);
 {

  for (i = 0;i < 6;i++)
  {
   if (vo->MacAddress[i] != 0)
   {
    Copy(v->MacAddress, vo->MacAddress, 6);
    break;
   }
  }


  v->HostIP = IPToUINT(&vo->Ip);
  v->HostMask = IPToUINT(&vo->Mask);


  v->Mtu = MIN(vo->Mtu, MAX_L3_DATA_SIZE);
  if (v->Mtu == 0)
  {
   v->Mtu = MAX_L3_DATA_SIZE;
  }
  v->Mtu = MAX(v->Mtu, TCP_HEADER_SIZE + IP_HEADER_SIZE + MAC_HEADER_SIZE + 8);
  v->IpMss = ((v->Mtu - IP_HEADER_SIZE) / 8) * 8;
  v->TcpMss = ((v->IpMss - TCP_HEADER_SIZE) / 8) * 8;
  v->UdpMss = ((v->IpMss - UDP_HEADER_SIZE) / 8) * 8;

  if (vo->NatTcpTimeout != 0)
  {
   v->NatTcpTimeout = MIN(vo->NatTcpTimeout, 4000000) * 1000;
  }
  if (vo->NatUdpTimeout != 0)
  {
   v->NatUdpTimeout = MIN(vo->NatUdpTimeout, 4000000) * 1000;
  }
  v->NatTcpTimeout = MAKESURE(v->NatTcpTimeout, NAT_TCP_MIN_TIMEOUT, NAT_TCP_MAX_TIMEOUT);
  v->NatUdpTimeout = MAKESURE(v->NatUdpTimeout, NAT_UDP_MIN_TIMEOUT, NAT_UDP_MAX_TIMEOUT);
  Debug("Timeout: %d , %d\n", v->NatTcpTimeout, v->NatUdpTimeout);


  v->UseNat = vo->UseNat;


  v->UseDhcp = vo->UseDhcp;


  if (vo->DhcpExpireTimeSpan == 0 || vo->DhcpExpireTimeSpan == INFINITE)
  {
   v->DhcpExpire = INFINITE;
  }
  else
  {
   v->DhcpExpire = MAKESURE(DHCP_MIN_EXPIRE_TIMESPAN,
    MIN(vo->DhcpExpireTimeSpan * 1000, 2000000000),
    INFINITE);
  }


  v->DhcpIpStart = IPToUINT(&vo->DhcpLeaseIPStart);
  v->DhcpIpEnd = IPToUINT(&vo->DhcpLeaseIPEnd);
  if (Endian32(v->DhcpIpEnd) < Endian32(v->DhcpIpStart))
  {
   v->DhcpIpEnd = v->DhcpIpStart;
  }


  v->DhcpMask = IPToUINT(&vo->DhcpSubnetMask);


  v->DhcpGateway = IPToUINT(&vo->DhcpGatewayAddress);


  v->DhcpDns = IPToUINT(&vo->DhcpDnsServerAddress);
  v->DhcpDns2 = IPToUINT(&vo->DhcpDnsServerAddress2);


  StrCpy(v->DhcpDomain, sizeof(v->DhcpDomain), vo->DhcpDomainName);


  v->SaveLog = vo->SaveLog;


  if (vo->ApplyDhcpPushRoutes)
  {
   DHCP_CLASSLESS_ROUTE_TABLE rt;

   Zero(&rt, sizeof(rt));

   if (ParseClasslessRouteTableStr(&rt, vo->DhcpPushRoutes))
   {
    Copy(&v->PushRoute, &rt, sizeof(DHCP_CLASSLESS_ROUTE_TABLE));
   }
  }
 }
 UnlockVirtual(v);
}
