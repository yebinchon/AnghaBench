
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zero ;
typedef int UINT ;
struct TYPE_3__ {int SrcIpAddress; int SrcSubnetMask; int DestIpAddress; int DestSubnetMask; int DestSubnetMask6; int DestIpAddress6; int SrcSubnetMask6; int SrcIpAddress6; scalar_t__ IsIPv6; int RedirectUrl; int Loss; int Jitter; int Delay; scalar_t__ Established; scalar_t__ CheckTcpState; int DstMacMask; int DstMacAddress; scalar_t__ CheckDstMac; int SrcMacMask; int SrcMacAddress; scalar_t__ CheckSrcMac; int DestUsername; int SrcUsername; int DestPortEnd; int DestPortStart; int SrcPortEnd; int SrcPortStart; int Protocol; int Discard; int Priority; int Active; int Note; } ;
typedef int PACK ;
typedef int IPV6_ADDR ;
typedef TYPE_1__ ACCESS ;


 int PackAddBoolEx (int *,char*,scalar_t__,int ,int ) ;
 int PackAddDataEx (int *,char*,int ,int,int ,int ) ;
 int PackAddIntEx (int *,char*,int ,int ,int ) ;
 int PackAddIp32Ex (int *,char*,int,int ,int ) ;
 int PackAddIp6AddrEx (int *,char*,int *,int ,int ) ;
 int PackAddStrEx (int *,char*,int ,int ,int ) ;
 int PackAddUniStrEx (int *,char*,int ,int ,int ) ;
 int Zero (int *,int) ;

void SiAccessToPack(PACK *p, ACCESS *a, UINT i, UINT total)
{

 if (p == ((void*)0) || a == ((void*)0))
 {
  return;
 }

 PackAddUniStrEx(p, "Note", a->Note, i, total);
 PackAddIntEx(p, "Active", a->Active, i, total);
 PackAddIntEx(p, "Priority", a->Priority, i, total);
 PackAddIntEx(p, "Discard", a->Discard, i, total);
 if (a->IsIPv6)
 {
  PackAddIp32Ex(p, "SrcIpAddress", 0xFDFFFFDF, i, total);
  PackAddIp32Ex(p, "SrcSubnetMask", 0xFFFFFFFF, i, total);
  PackAddIp32Ex(p, "DestIpAddress", 0xFDFFFFDF, i, total);
  PackAddIp32Ex(p, "DestSubnetMask", 0xFFFFFFFF, i, total);
 }
 else
 {
  PackAddIp32Ex(p, "SrcIpAddress", a->SrcIpAddress, i, total);
  PackAddIp32Ex(p, "SrcSubnetMask", a->SrcSubnetMask, i, total);
  PackAddIp32Ex(p, "DestIpAddress", a->DestIpAddress, i, total);
  PackAddIp32Ex(p, "DestSubnetMask", a->DestSubnetMask, i, total);
 }
 PackAddIntEx(p, "Protocol", a->Protocol, i, total);
 PackAddIntEx(p, "SrcPortStart", a->SrcPortStart, i, total);
 PackAddIntEx(p, "SrcPortEnd", a->SrcPortEnd, i, total);
 PackAddIntEx(p, "DestPortStart", a->DestPortStart, i, total);
 PackAddIntEx(p, "DestPortEnd", a->DestPortEnd, i, total);
 PackAddStrEx(p, "SrcUsername", a->SrcUsername, i, total);
 PackAddStrEx(p, "DestUsername", a->DestUsername, i, total);
 PackAddBoolEx(p, "CheckSrcMac", a->CheckSrcMac, i, total);
 PackAddDataEx(p, "SrcMacAddress", a->SrcMacAddress, sizeof(a->SrcMacAddress), i, total);
 PackAddDataEx(p, "SrcMacMask", a->SrcMacMask, sizeof(a->SrcMacMask), i, total);
 PackAddBoolEx(p, "CheckDstMac", a->CheckDstMac, i, total);
 PackAddDataEx(p, "DstMacAddress", a->DstMacAddress, sizeof(a->DstMacAddress), i, total);
 PackAddDataEx(p, "DstMacMask", a->DstMacMask, sizeof(a->DstMacMask), i, total);
 PackAddBoolEx(p, "CheckTcpState", a->CheckTcpState, i, total);
 PackAddBoolEx(p, "Established", a->Established, i, total);
 PackAddIntEx(p, "Delay", a->Delay, i, total);
 PackAddIntEx(p, "Jitter", a->Jitter, i, total);
 PackAddIntEx(p, "Loss", a->Loss, i, total);
 PackAddStrEx(p, "RedirectUrl", a->RedirectUrl, i, total);
 PackAddBoolEx(p, "IsIPv6", a->IsIPv6, i, total);
 if (a->IsIPv6)
 {
  PackAddIp6AddrEx(p, "SrcIpAddress6", &a->SrcIpAddress6, i, total);
  PackAddIp6AddrEx(p, "SrcSubnetMask6", &a->SrcSubnetMask6, i, total);
  PackAddIp6AddrEx(p, "DestIpAddress6", &a->DestIpAddress6, i, total);
  PackAddIp6AddrEx(p, "DestSubnetMask6", &a->DestSubnetMask6, i, total);
 }
 else
 {
  IPV6_ADDR zero;

  Zero(&zero, sizeof(zero));

  PackAddIp6AddrEx(p, "SrcIpAddress6", &zero, i, total);
  PackAddIp6AddrEx(p, "SrcSubnetMask6", &zero, i, total);
  PackAddIp6AddrEx(p, "DestIpAddress6", &zero, i, total);
  PackAddIp6AddrEx(p, "DestSubnetMask6", &zero, i, total);
 }
}
