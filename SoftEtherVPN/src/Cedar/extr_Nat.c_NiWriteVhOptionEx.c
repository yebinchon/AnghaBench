
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mac_address ;
struct TYPE_3__ {char* DhcpDomainName; char* DhcpPushRoutes; int SaveLog; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; int DhcpExpireTimeSpan; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; int UseDhcp; int NatUdpTimeout; int NatTcpTimeout; int Mtu; int UseNat; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_1__ VH_OPTION ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddIp (int *,char*,int *) ;
 int CfgAddStr (int *,char*,char*) ;
 int * CfgCreateFolder (int *,char*) ;
 int MAX_SIZE ;
 int MacToStr (char*,int,int ) ;

void NiWriteVhOptionEx(VH_OPTION *o, FOLDER *root)
{
 FOLDER *host, *nat, *dhcp;
 char mac_address[MAX_SIZE];

 if (o == ((void*)0) || root == ((void*)0))
 {
  return;
 }

 host = CfgCreateFolder(root, "VirtualHost");
 nat = CfgCreateFolder(root, "VirtualRouter");
 dhcp = CfgCreateFolder(root, "VirtualDhcpServer");

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
 CfgAddStr(dhcp, "DhcpPushRoutes", o->DhcpPushRoutes);

 CfgAddBool(root, "SaveLog", o->SaveLog);
}
