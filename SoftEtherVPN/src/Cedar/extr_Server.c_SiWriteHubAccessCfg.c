
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int Active; int Discard; int IsIPv6; char* SrcUsername; char* DestUsername; int CheckSrcMac; int CheckDstMac; int CheckTcpState; int Established; char* RedirectUrl; int Loss; int Jitter; int Delay; int DstMacMask; int DstMacAddress; int SrcMacMask; int SrcMacAddress; int DestPortEnd; int DestPortStart; int SrcPortEnd; int SrcPortStart; int Protocol; int DestSubnetMask6; int DestIpAddress6; int SrcSubnetMask6; int SrcIpAddress6; int DestSubnetMask; int DestIpAddress; int SrcSubnetMask; int SrcIpAddress; int Priority; int Note; } ;
typedef int FOLDER ;
typedef TYPE_1__ ACCESS ;


 int CfgAddBool (int *,char*,int) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddIp32 (int *,char*,int ) ;
 int CfgAddIp6Addr (int *,char*,int *) ;
 int CfgAddStr (int *,char*,char*) ;
 int CfgAddUniStr (int *,char*,int ) ;
 int MAX_PATH ;
 int MacToStr (char*,int,int ) ;

void SiWriteHubAccessCfg(FOLDER *f, ACCESS *a)
{

 if (f == ((void*)0) || a == ((void*)0))
 {
  return;
 }

 CfgAddUniStr(f, "Note", a->Note);
 CfgAddBool(f, "Active", a->Active);
 CfgAddInt(f, "Priority", a->Priority);
 CfgAddBool(f, "Discard", a->Discard);
 CfgAddBool(f, "IsIPv6", a->IsIPv6);

 if (a->IsIPv6 == 0)
 {
  CfgAddIp32(f, "SrcIpAddress", a->SrcIpAddress);
  CfgAddIp32(f, "SrcSubnetMask", a->SrcSubnetMask);
  CfgAddIp32(f, "DestIpAddress", a->DestIpAddress);
  CfgAddIp32(f, "DestSubnetMask", a->DestSubnetMask);
 }
 else
 {
  CfgAddIp6Addr(f, "SrcIpAddress6", &a->SrcIpAddress6);
  CfgAddIp6Addr(f, "SrcSubnetMask6", &a->SrcSubnetMask6);
  CfgAddIp6Addr(f, "DestIpAddress6", &a->DestIpAddress6);
  CfgAddIp6Addr(f, "DestSubnetMask6", &a->DestSubnetMask6);
 }

 CfgAddInt(f, "Protocol", a->Protocol);
 CfgAddInt(f, "SrcPortStart", a->SrcPortStart);
 CfgAddInt(f, "SrcPortEnd", a->SrcPortEnd);
 CfgAddInt(f, "DestPortStart", a->DestPortStart);
 CfgAddInt(f, "DestPortEnd", a->DestPortEnd);
 CfgAddStr(f, "SrcUsername", a->SrcUsername);
 CfgAddStr(f, "DestUsername", a->DestUsername);
 CfgAddBool(f, "CheckSrcMac", a->CheckSrcMac);

 if (a->CheckSrcMac)
 {
  char tmp[MAX_PATH];

  MacToStr(tmp, sizeof(tmp), a->SrcMacAddress);
  CfgAddStr(f, "SrcMacAddress", tmp);

  MacToStr(tmp, sizeof(tmp), a->SrcMacMask);
  CfgAddStr(f, "SrcMacMask", tmp);
 }

 CfgAddBool(f, "CheckDstMac", a->CheckDstMac);

 if (a->CheckDstMac)
 {
  char tmp[MAX_PATH];

  MacToStr(tmp, sizeof(tmp), a->DstMacAddress);
  CfgAddStr(f, "DstMacAddress", tmp);

  MacToStr(tmp, sizeof(tmp), a->DstMacMask);
  CfgAddStr(f, "DstMacMask", tmp);
 }

 CfgAddBool(f, "CheckTcpState", a->CheckTcpState);
 CfgAddBool(f, "Established", a->Established);

 CfgAddStr(f, "RedirectUrl", a->RedirectUrl);

 CfgAddInt(f, "Delay", a->Delay);
 CfgAddInt(f, "Jitter", a->Jitter);
 CfgAddInt(f, "Loss", a->Loss);
}
