
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int DestSubnetMask6; int DestIpAddress6; int SrcSubnetMask6; int SrcIpAddress6; void* IsIPv6; int RedirectUrl; void* Loss; void* Jitter; void* Delay; void* Established; void* CheckTcpState; int DstMacMask; int DstMacAddress; void* CheckDstMac; int SrcMacMask; int SrcMacAddress; void* CheckSrcMac; int DestUsername; int SrcUsername; void* DestPortEnd; void* DestPortStart; void* SrcPortEnd; void* SrcPortStart; void* Protocol; void* DestSubnetMask; void* DestIpAddress; void* SrcSubnetMask; void* SrcIpAddress; void* Discard; void* Priority; void* Active; int Note; } ;
typedef int PACK ;
typedef TYPE_1__ ACCESS ;


 void* PackGetBoolEx (int *,char*,int ) ;
 int PackGetDataEx2 (int *,char*,int ,int,int ) ;
 void* PackGetIntEx (int *,char*,int ) ;
 void* PackGetIp32Ex (int *,char*,int ) ;
 int PackGetIp6AddrEx (int *,char*,int *,int ) ;
 int PackGetStrEx (int *,char*,int ,int,int ) ;
 int PackGetUniStrEx (int *,char*,int ,int,int ) ;
 TYPE_1__* ZeroMalloc (int) ;

ACCESS *SiPackToAccess(PACK *p, UINT i)
{
 ACCESS *a;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 a = ZeroMalloc(sizeof(ACCESS));

 PackGetUniStrEx(p, "Note", a->Note, sizeof(a->Note), i);
 a->Active = PackGetIntEx(p, "Active", i);
 a->Priority = PackGetIntEx(p, "Priority", i);
 a->Discard = PackGetIntEx(p, "Discard", i);
 a->SrcIpAddress = PackGetIp32Ex(p, "SrcIpAddress", i);
 a->SrcSubnetMask = PackGetIp32Ex(p, "SrcSubnetMask", i);
 a->DestIpAddress = PackGetIp32Ex(p, "DestIpAddress", i);
 a->DestSubnetMask = PackGetIp32Ex(p, "DestSubnetMask", i);
 a->Protocol = PackGetIntEx(p, "Protocol", i);
 a->SrcPortStart = PackGetIntEx(p, "SrcPortStart", i);
 a->SrcPortEnd = PackGetIntEx(p, "SrcPortEnd", i);
 a->DestPortStart = PackGetIntEx(p, "DestPortStart", i);
 a->DestPortEnd = PackGetIntEx(p, "DestPortEnd", i);
 PackGetStrEx(p, "SrcUsername", a->SrcUsername, sizeof(a->SrcUsername), i);
 PackGetStrEx(p, "DestUsername", a->DestUsername, sizeof(a->DestUsername), i);
 a->CheckSrcMac = PackGetBoolEx(p, "CheckSrcMac", i);
 PackGetDataEx2(p, "SrcMacAddress", a->SrcMacAddress, sizeof(a->SrcMacAddress), i);
 PackGetDataEx2(p, "SrcMacMask", a->SrcMacMask, sizeof(a->SrcMacMask), i);
 a->CheckDstMac = PackGetBoolEx(p, "CheckDstMac", i);
 PackGetDataEx2(p, "DstMacAddress", a->DstMacAddress, sizeof(a->DstMacAddress), i);
 PackGetDataEx2(p, "DstMacMask", a->DstMacMask, sizeof(a->DstMacMask), i);
 a->CheckTcpState = PackGetBoolEx(p, "CheckTcpState", i);
 a->Established = PackGetBoolEx(p, "Established", i);
 a->Delay = PackGetIntEx(p, "Delay", i);
 a->Jitter = PackGetIntEx(p, "Jitter", i);
 a->Loss = PackGetIntEx(p, "Loss", i);
 a->IsIPv6 = PackGetBoolEx(p, "IsIPv6", i);
 PackGetStrEx(p, "RedirectUrl", a->RedirectUrl, sizeof(a->RedirectUrl), i);
 if (a->IsIPv6)
 {
  PackGetIp6AddrEx(p, "SrcIpAddress6", &a->SrcIpAddress6, i);
  PackGetIp6AddrEx(p, "SrcSubnetMask6", &a->SrcSubnetMask6, i);
  PackGetIp6AddrEx(p, "DestIpAddress6", &a->DestIpAddress6, i);
  PackGetIp6AddrEx(p, "DestSubnetMask6", &a->DestSubnetMask6, i);
 }

 return a;
}
