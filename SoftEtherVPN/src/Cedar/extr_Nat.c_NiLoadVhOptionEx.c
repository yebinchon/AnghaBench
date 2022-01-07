
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mac_address ;
struct TYPE_7__ {char* DhcpDomainName; char* DhcpPushRoutes; int ApplyDhcpPushRoutes; void* SaveLog; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; void* DhcpExpireTimeSpan; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; void* UseDhcp; void* NatUdpTimeout; void* NatTcpTimeout; void* Mtu; void* UseNat; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_1__ VH_OPTION ;
struct TYPE_8__ {int Size; int Buf; } ;
typedef int FOLDER ;
typedef TYPE_2__ BUF ;


 void* CfgGetBool (int *,char*) ;
 int * CfgGetFolder (int *,char*) ;
 void* CfgGetInt (int *,char*) ;
 int CfgGetIp (int *,char*,int *) ;
 scalar_t__ CfgGetStr (int *,char*,char*,int) ;
 int Copy (int ,int ,int) ;
 int FreeBuf (TYPE_2__*) ;
 int GenMacAddress (int ) ;
 int MAX_SIZE ;
 int NormalizeClasslessRouteTableStr (char*,int,char*) ;
 scalar_t__ StrLen (char*) ;
 TYPE_2__* StrToBin (char*) ;
 int Trim (char*) ;
 int Zero (TYPE_1__*,int) ;

void NiLoadVhOptionEx(VH_OPTION *o, FOLDER *root)
{
 FOLDER *host, *nat, *dhcp;
 char mac_address[MAX_SIZE];

 if (o == ((void*)0) || root == ((void*)0))
 {
  return;
 }

 host = CfgGetFolder(root, "VirtualHost");
 nat = CfgGetFolder(root, "VirtualRouter");
 dhcp = CfgGetFolder(root, "VirtualDhcpServer");

 Zero(o, sizeof(VH_OPTION));

 GenMacAddress(o->MacAddress);
 if (CfgGetStr(host, "VirtualHostMacAddress", mac_address, sizeof(mac_address)))
 {
  BUF *b = StrToBin(mac_address);
  if (b != ((void*)0))
  {
   if (b->Size == 6)
   {
    Copy(o->MacAddress, b->Buf, 6);
   }
  }
  FreeBuf(b);
 }
 CfgGetIp(host, "VirtualHostIp", &o->Ip);
 CfgGetIp(host, "VirtualHostIpSubnetMask", &o->Mask);

 o->UseNat = CfgGetBool(nat, "NatEnabled");
 o->Mtu = CfgGetInt(nat, "NatMtu");
 o->NatTcpTimeout = CfgGetInt(nat, "NatTcpTimeout");
 o->NatUdpTimeout = CfgGetInt(nat, "NatUdpTimeout");

 o->UseDhcp = CfgGetBool(dhcp, "DhcpEnabled");
 CfgGetIp(dhcp, "DhcpLeaseIPStart", &o->DhcpLeaseIPStart);
 CfgGetIp(dhcp, "DhcpLeaseIPEnd", &o->DhcpLeaseIPEnd);
 CfgGetIp(dhcp, "DhcpSubnetMask", &o->DhcpSubnetMask);
 o->DhcpExpireTimeSpan = CfgGetInt(dhcp, "DhcpExpireTimeSpan");
 CfgGetIp(dhcp, "DhcpGatewayAddress", &o->DhcpGatewayAddress);
 CfgGetIp(dhcp, "DhcpDnsServerAddress", &o->DhcpDnsServerAddress);
 CfgGetIp(dhcp, "DhcpDnsServerAddress2", &o->DhcpDnsServerAddress2);
 CfgGetStr(dhcp, "DhcpDomainName", o->DhcpDomainName, sizeof(o->DhcpDomainName));

 CfgGetStr(dhcp, "DhcpPushRoutes", o->DhcpPushRoutes, sizeof(o->DhcpPushRoutes));





 NormalizeClasslessRouteTableStr(o->DhcpPushRoutes, sizeof(o->DhcpPushRoutes), o->DhcpPushRoutes);
 o->ApplyDhcpPushRoutes = 1;

 Trim(o->DhcpDomainName);
 if (StrLen(o->DhcpDomainName) == 0)
 {

 }

 o->SaveLog = CfgGetBool(root, "SaveLog");
}
