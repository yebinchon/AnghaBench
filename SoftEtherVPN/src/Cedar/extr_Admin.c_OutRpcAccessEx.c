
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zero ;
typedef int UINT ;
struct TYPE_3__ {int SrcIpAddress; int SrcSubnetMask; int DestIpAddress; int DestSubnetMask; int DestSubnetMask6; int DestIpAddress6; int SrcSubnetMask6; int SrcIpAddress6; scalar_t__ IsIPv6; int RedirectUrl; int UniqueId; int Loss; int Jitter; int Delay; scalar_t__ Established; scalar_t__ CheckTcpState; int DstMacMask; int DstMacAddress; scalar_t__ CheckDstMac; int SrcMacMask; int SrcMacAddress; scalar_t__ CheckSrcMac; int DestUsername; int SrcUsername; int DestPortEnd; int DestPortStart; int SrcPortEnd; int SrcPortStart; int Protocol; scalar_t__ Discard; int Priority; scalar_t__ Active; int Note; int Id; } ;
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

void OutRpcAccessEx(PACK *p, ACCESS *a, UINT index, UINT total)
{

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddIntEx(p, "Id", a->Id, index, total);
 PackAddUniStrEx(p, "Note", a->Note, index, total);
 PackAddBoolEx(p, "Active", a->Active, index, total);
 PackAddIntEx(p, "Priority", a->Priority, index, total);
 PackAddBoolEx(p, "Discard", a->Discard, index, total);
 if (a->IsIPv6)
 {
  PackAddIp32Ex(p, "SrcIpAddress", 0xFDFFFFDF, index, total);
  PackAddIp32Ex(p, "SrcSubnetMask", 0xFFFFFFFF, index, total);
  PackAddIp32Ex(p, "DestIpAddress", 0xFDFFFFDF, index, total);
  PackAddIp32Ex(p, "DestSubnetMask", 0xFFFFFFFF, index, total);
 }
 else
 {
  PackAddIp32Ex(p, "SrcIpAddress", a->SrcIpAddress, index, total);
  PackAddIp32Ex(p, "SrcSubnetMask", a->SrcSubnetMask, index, total);
  PackAddIp32Ex(p, "DestIpAddress", a->DestIpAddress, index, total);
  PackAddIp32Ex(p, "DestSubnetMask", a->DestSubnetMask, index, total);
 }
 PackAddIntEx(p, "Protocol", a->Protocol, index, total);
 PackAddIntEx(p, "SrcPortStart", a->SrcPortStart, index, total);
 PackAddIntEx(p, "SrcPortEnd", a->SrcPortEnd, index, total);
 PackAddIntEx(p, "DestPortStart", a->DestPortStart, index, total);
 PackAddIntEx(p, "DestPortEnd", a->DestPortEnd, index, total);

 PackAddStrEx(p, "SrcUsername", a->SrcUsername, index, total);

 PackAddStrEx(p, "DestUsername", a->DestUsername, index, total);
 PackAddBoolEx(p, "CheckSrcMac", a->CheckSrcMac, index, total);
 PackAddDataEx(p, "SrcMacAddress", a->SrcMacAddress, sizeof(a->SrcMacAddress), index, total);
 PackAddDataEx(p, "SrcMacMask", a->SrcMacMask, sizeof(a->SrcMacMask), index, total);
 PackAddBoolEx(p, "CheckDstMac", a->CheckDstMac, index, total);
 PackAddDataEx(p, "DstMacAddress", a->DstMacAddress, sizeof(a->DstMacAddress), index, total);
 PackAddDataEx(p, "DstMacMask", a->DstMacMask, sizeof(a->DstMacMask), index, total);
 PackAddBoolEx(p, "CheckTcpState", a->CheckTcpState, index, total);
 PackAddBoolEx(p, "Established", a->Established, index, total);
 PackAddIntEx(p, "Delay", a->Delay, index, total);
 PackAddIntEx(p, "Jitter", a->Jitter, index, total);
 PackAddIntEx(p, "Loss", a->Loss, index, total);
 PackAddBoolEx(p, "IsIPv6", a->IsIPv6, index, total);
 PackAddIntEx(p, "UniqueId", a->UniqueId, index, total);
 PackAddStrEx(p, "RedirectUrl", a->RedirectUrl, index, total);
 if (a->IsIPv6)
 {
  PackAddIp6AddrEx(p, "SrcIpAddress6", &a->SrcIpAddress6, index, total);
  PackAddIp6AddrEx(p, "SrcSubnetMask6", &a->SrcSubnetMask6, index, total);
  PackAddIp6AddrEx(p, "DestIpAddress6", &a->DestIpAddress6, index, total);
  PackAddIp6AddrEx(p, "DestSubnetMask6", &a->DestSubnetMask6, index, total);
 }
 else
 {
  IPV6_ADDR zero;

  Zero(&zero, sizeof(zero));

  PackAddIp6AddrEx(p, "SrcIpAddress6", &zero, index, total);
  PackAddIp6AddrEx(p, "SrcSubnetMask6", &zero, index, total);
  PackAddIp6AddrEx(p, "DestIpAddress6", &zero, index, total);
  PackAddIp6AddrEx(p, "DestSubnetMask6", &zero, index, total);
 }
}
