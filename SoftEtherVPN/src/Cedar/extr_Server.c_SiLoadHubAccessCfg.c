
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
typedef int a ;
struct TYPE_4__ {int IsIPv6; char* SrcUsername; char* DestUsername; int CheckSrcMac; int CheckDstMac; char* RedirectUrl; void* Loss; void* Jitter; void* Delay; void* Established; void* CheckTcpState; int DstMacMask; int DstMacAddress; int SrcMacMask; int SrcMacAddress; void* DestPortEnd; void* DestPortStart; void* SrcPortEnd; void* SrcPortStart; void* Protocol; int DestSubnetMask6; int DestIpAddress6; int SrcSubnetMask6; int SrcIpAddress6; void* DestSubnetMask; void* DestIpAddress; void* SrcSubnetMask; void* SrcIpAddress; void* Discard; void* Priority; void* Active; int Note; } ;
typedef int HUB ;
typedef int FOLDER ;
typedef TYPE_1__ ACCESS ;


 int AddAccessList (int *,TYPE_1__*) ;
 void* CfgGetBool (int *,char*) ;
 scalar_t__ CfgGetByte (int *,char*,int ,int) ;
 void* CfgGetInt (int *,char*) ;
 void* CfgGetIp32 (int *,char*) ;
 int CfgGetIp6Addr (int *,char*,int *) ;
 int CfgGetStr (int *,char*,char*,int) ;
 int CfgGetUniStr (int *,char*,int ,int) ;
 int HUB_ACCESSLIST_DELAY_MAX ;
 int HUB_ACCESSLIST_JITTER_MAX ;
 int HUB_ACCESSLIST_LOSS_MAX ;
 void* MAKESURE (void*,int ,int ) ;
 int MAX_PATH ;
 int StrToMac (int ,char*) ;
 int Zero (TYPE_1__*,int) ;

void SiLoadHubAccessCfg(HUB *h, FOLDER *f)
{
 ACCESS a;
 char tmp[MAX_PATH];

 if (h == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 Zero(&a, sizeof(a));

 CfgGetUniStr(f, "Note", a.Note, sizeof(a.Note));
 a.Active = CfgGetBool(f, "Active");
 a.Priority = CfgGetInt(f, "Priority");
 a.Discard = CfgGetBool(f, "Discard");
 a.IsIPv6 = CfgGetBool(f, "IsIPv6");

 if (a.IsIPv6 == 0)
 {
  a.SrcIpAddress = CfgGetIp32(f, "SrcIpAddress");
  a.SrcSubnetMask = CfgGetIp32(f, "SrcSubnetMask");
  a.DestIpAddress = CfgGetIp32(f, "DestIpAddress");
  a.DestSubnetMask = CfgGetIp32(f, "DestSubnetMask");
 }
 else
 {
  CfgGetIp6Addr(f, "SrcIpAddress6", &a.SrcIpAddress6);
  CfgGetIp6Addr(f, "SrcSubnetMask6", &a.SrcSubnetMask6);
  CfgGetIp6Addr(f, "DestIpAddress6", &a.DestIpAddress6);
  CfgGetIp6Addr(f, "DestSubnetMask6", &a.DestSubnetMask6);
 }

 a.Protocol = CfgGetInt(f, "Protocol");
 a.SrcPortStart = CfgGetInt(f, "SrcPortStart");
 a.SrcPortEnd = CfgGetInt(f, "SrcPortEnd");
 a.DestPortStart = CfgGetInt(f, "DestPortStart");
 a.DestPortEnd = CfgGetInt(f, "DestPortEnd");
 CfgGetStr(f, "SrcUsername", a.SrcUsername, sizeof(a.SrcUsername));
 CfgGetStr(f, "DestUsername", a.DestUsername, sizeof(a.DestUsername));
 a.CheckSrcMac = CfgGetBool(f, "CheckSrcMac");

 if (CfgGetByte(f, "SrcMacAddress", a.SrcMacAddress, sizeof(a.SrcMacAddress)) == 0)
 {
  CfgGetStr(f, "SrcMacAddress", tmp, sizeof(tmp));
  if (StrToMac(a.SrcMacAddress, tmp) == 0)
  {
   a.CheckSrcMac = 0;
  }
 }

 if (CfgGetByte(f, "SrcMacMask", a.SrcMacMask, sizeof(a.SrcMacMask)) == 0)
 {
  CfgGetStr(f, "SrcMacMask", tmp, sizeof(tmp));
  if (StrToMac(a.SrcMacMask, tmp) == 0)
  {
   a.CheckSrcMac = 0;
  }
 }

 a.CheckDstMac = CfgGetBool(f, "CheckDstMac");

 if (CfgGetByte(f, "DstMacAddress", a.DstMacAddress, sizeof(a.DstMacAddress)) == 0)
 {
  CfgGetStr(f, "DstMacAddress", tmp, sizeof(tmp));
  if (StrToMac(a.DstMacAddress, tmp) == 0)
  {
   a.CheckDstMac = 0;
  }
 }

 if (CfgGetByte(f, "DstMacMask", a.DstMacMask, sizeof(a.DstMacMask)) == 0)
 {
  CfgGetStr(f, "DstMacMask", tmp, sizeof(tmp));
  if (StrToMac(a.DstMacMask, tmp) == 0)
  {
   a.CheckDstMac = 0;
  }
 }

 a.CheckTcpState = CfgGetBool(f, "CheckTcpState");
 a.Established = CfgGetBool(f, "Established");
 a.Delay = MAKESURE(CfgGetInt(f, "Delay"), 0, HUB_ACCESSLIST_DELAY_MAX);
 a.Jitter = MAKESURE(CfgGetInt(f, "Jitter"), 0, HUB_ACCESSLIST_JITTER_MAX);
 a.Loss = MAKESURE(CfgGetInt(f, "Loss"), 0, HUB_ACCESSLIST_LOSS_MAX);

 CfgGetStr(f, "RedirectUrl", a.RedirectUrl, sizeof(a.RedirectUrl));

 AddAccessList(h, &a);
}
