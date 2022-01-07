
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int NatTcpTimeout; int NatUdpTimeout; int DhcpExpireTimeSpan; int ApplyDhcpPushRoutes; int DhcpPushRoutes; int SaveLog; int DhcpDomainName; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; int UseDhcp; int UseNat; int Mtu; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_1__ VH_OPTION ;
struct TYPE_9__ {int NatTcpTimeout; int NatUdpTimeout; int DhcpExpire; int PushRoute; int SaveLog; int DhcpDomain; int DhcpDns2; int DhcpDns; int DhcpGateway; int DhcpMask; int DhcpIpEnd; int DhcpIpStart; int UseDhcp; int UseNat; int Mtu; int HostMask; int HostIP; int MacAddress; } ;
typedef TYPE_2__ VH ;


 int BuildClasslessRouteTableStr (int ,int,int *) ;
 int Copy (int ,int ,int) ;
 int INFINITE ;
 int LockVirtual (TYPE_2__*) ;
 int StrCpy (int ,int,int ) ;
 int UINTToIP (int *,int ) ;
 int UnlockVirtual (TYPE_2__*) ;
 int Zero (TYPE_1__*,int) ;

void GetVirtualHostOption(VH *v, VH_OPTION *o)
{

 if (v == ((void*)0))
 {
  return;
 }

 LockVirtual(v);
 {
  Zero(o, sizeof(VH_OPTION));


  Copy(o->MacAddress, v->MacAddress, 6);


  UINTToIP(&o->Ip, v->HostIP);
  UINTToIP(&o->Mask, v->HostMask);

  o->Mtu = v->Mtu;


  o->NatTcpTimeout = v->NatTcpTimeout / 1000;
  o->NatUdpTimeout = v->NatUdpTimeout / 1000;


  o->UseNat = v->UseNat;


  o->UseDhcp = v->UseDhcp;


  UINTToIP(&o->DhcpLeaseIPStart, v->DhcpIpStart);
  UINTToIP(&o->DhcpLeaseIPEnd, v->DhcpIpEnd);


  UINTToIP(&o->DhcpSubnetMask, v->DhcpMask);


  if (v->DhcpExpire != INFINITE)
  {
   o->DhcpExpireTimeSpan = v->DhcpExpire / 1000;
  }
  else
  {
   o->DhcpExpireTimeSpan = INFINITE;
  }


  UINTToIP(&o->DhcpGatewayAddress, v->DhcpGateway);


  UINTToIP(&o->DhcpDnsServerAddress, v->DhcpDns);
  UINTToIP(&o->DhcpDnsServerAddress2, v->DhcpDns2);


  StrCpy(o->DhcpDomainName, sizeof(o->DhcpDomainName), v->DhcpDomain);


  o->SaveLog = v->SaveLog;


  BuildClasslessRouteTableStr(o->DhcpPushRoutes, sizeof(o->DhcpPushRoutes), &v->PushRoute);
  o->ApplyDhcpPushRoutes = 1;
 }
 UnlockVirtual(v);
}
