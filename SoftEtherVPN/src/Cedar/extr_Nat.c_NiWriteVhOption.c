
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mac_address ;
struct TYPE_4__ {char* DhcpDomainName; int SaveLog; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; int DhcpExpireTimeSpan; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; int UseDhcp; int NatUdpTimeout; int NatTcpTimeout; int Mtu; int UseNat; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_1__ VH_OPTION ;
struct TYPE_5__ {TYPE_1__ Option; } ;
typedef TYPE_2__ NAT ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddIp (int *,char*,int *) ;
 int CfgAddStr (int *,char*,char*) ;
 int * CfgCreateFolder (int *,char*) ;
 int MAX_SIZE ;
 int MacToStr (char*,int,int ) ;

void NiWriteVhOption(NAT *n, FOLDER *root)
{
 VH_OPTION *o;
 FOLDER *host, *nat, *dhcp;
 char mac_address[MAX_SIZE];

 if (n == ((void*)0) || root == ((void*)0))
 {
  return;
 }

 host = CfgCreateFolder(root, "VirtualHost");
 nat = CfgCreateFolder(root, "VirtualRouter");
 dhcp = CfgCreateFolder(root, "VirtualDhcpServer");

 o = &n->Option;

 MacToStr(mac_address, sizeof(mac_address), o->MacAddress);
 CfgAddStr(host, "VirtualHostMacAddress", mac_address);
 CfgAddIp(host, "VirtualHostIp", &o->Ip);
 CfgAddIp(host, "VirtualHostIpSubnetMask", &o->Mask);

 CfgAddBool(nat, "NatEnabled", o->UseNat);
 CfgAddInt(nat, "NatMtu", o->Mtu);
 CfgAddInt(nat, "NatTcpTimeout", o->NatTcpTimeout);
 CfgAddInt(nat, "NatUdpTimeout", o->NatUdpTimeout);

 CfgAddBool(dhcp, "DhcpEnabled", o->UseDhcp);
 CfgAddIp(dhcp, "DhcpLeaseIPStart", &o->DhcpLeaseIPStart);
 CfgAddIp(dhcp, "DhcpLeaseIPEnd", &o->DhcpLeaseIPEnd);
 CfgAddIp(dhcp, "DhcpSubnetMask", &o->DhcpSubnetMask);
 CfgAddInt(dhcp, "DhcpExpireTimeSpan", o->DhcpExpireTimeSpan);
 CfgAddIp(dhcp, "DhcpGatewayAddress", &o->DhcpGatewayAddress);
 CfgAddIp(dhcp, "DhcpDnsServerAddress", &o->DhcpDnsServerAddress);
 CfgAddIp(dhcp, "DhcpDnsServerAddress2", &o->DhcpDnsServerAddress2);
 CfgAddStr(dhcp, "DhcpDomainName", o->DhcpDomainName);

 CfgAddBool(root, "SaveLog", o->SaveLog);
}
