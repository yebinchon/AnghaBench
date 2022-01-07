
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mac_address ;
struct TYPE_8__ {char* DhcpDomainName; void* SaveLog; int DhcpDnsServerAddress2; int DhcpDnsServerAddress; int DhcpGatewayAddress; void* DhcpExpireTimeSpan; int DhcpSubnetMask; int DhcpLeaseIPEnd; int DhcpLeaseIPStart; void* UseDhcp; void* NatUdpTimeout; void* NatTcpTimeout; void* Mtu; void* UseNat; int Mask; int Ip; int MacAddress; } ;
typedef TYPE_1__ VH_OPTION ;
struct TYPE_10__ {int Size; int Buf; } ;
struct TYPE_9__ {TYPE_1__ Option; } ;
typedef TYPE_2__ NAT ;
typedef int FOLDER ;
typedef TYPE_3__ BUF ;


 void* CfgGetBool (int *,char*) ;
 int * CfgGetFolder (int *,char*) ;
 void* CfgGetInt (int *,char*) ;
 int CfgGetIp (int *,char*,int *) ;
 scalar_t__ CfgGetStr (int *,char*,char*,int) ;
 int Copy (int ,int ,int) ;
 int FreeBuf (TYPE_3__*) ;
 int GenMacAddress (int ) ;
 int MAX_SIZE ;
 TYPE_3__* StrToBin (char*) ;
 int Zero (TYPE_1__*,int) ;

void NiLoadVhOption(NAT *n, FOLDER *root)
{
 VH_OPTION *o;
 FOLDER *host, *nat, *dhcp;
 char mac_address[MAX_SIZE];

 if (n == ((void*)0) || root == ((void*)0))
 {
  return;
 }

 host = CfgGetFolder(root, "VirtualHost");
 nat = CfgGetFolder(root, "VirtualRouter");
 dhcp = CfgGetFolder(root, "VirtualDhcpServer");

 o = &n->Option;
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

 o->SaveLog = CfgGetBool(root, "SaveLog");
}
