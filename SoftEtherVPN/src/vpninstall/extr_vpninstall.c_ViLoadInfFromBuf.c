
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Build; int Supported; int Path; int VpnCMgrExeFileName; } ;
struct TYPE_9__ {scalar_t__ VpnInstallBuild; TYPE_1__ x86; int SettingPath; int NormalMode; } ;
typedef TYPE_2__ VI_SETTING ;
struct TYPE_10__ {int NumTokens; char** Token; } ;
typedef TYPE_3__ TOKEN_LIST ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 int FreeToken (TYPE_3__*) ;
 int IsEmptyStr (int ) ;
 scalar_t__ MsIsX64 () ;
 TYPE_3__* ParseToken (char*,char*) ;
 int SeekBuf (int *,int ,int ) ;
 int StartWith (char*,char*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (int ,int,char*) ;
 int ToBool (char*) ;
 void* ToInt (char*) ;
 int Zero (TYPE_2__*,int) ;

bool ViLoadInfFromBuf(VI_SETTING *set, BUF *buf)
{
 bool ret;
 if (set == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }

 Zero(set, sizeof(VI_SETTING));

 SeekBuf(buf, 0, 0);
 while (1)
 {
  char *tmp = CfgReadNextLine(buf);
  TOKEN_LIST *tokens;

  if (tmp == ((void*)0))
  {
   break;
  }

  tokens = ParseToken(tmp, " \t");

  if (tokens != ((void*)0))
  {
   if (tokens->NumTokens >= 2)
   {
    if (StartWith(tokens->Token[0], "#") == 0
     || StartWith(tokens->Token[0], "//") == 0)
    {
     char *name, *value;
     name = tokens->Token[0];
     value = tokens->Token[1];

     if (StrCmpi(name, "VpnInstallBuild") == 0)
     {
      set->VpnInstallBuild = ToInt(value);
     }
     else if (StrCmpi(name, "NormalMode") == 0)
     {
      set->NormalMode = ToBool(value);
     }
     else if (StrCmpi(name, "VpnSettingPath") == 0)
     {
      StrCpy(set->SettingPath, sizeof(set->SettingPath), value);
     }
     else if (StrCmpi(name, "VpnClientBuild") == 0)
     {
      set->x86.Build = ToInt(value);
     }
     else if (StrCmpi(name, "VpnClientPath") == 0)
     {
      StrCpy(set->x86.Path, sizeof(set->x86.Path), value);
     }
    }
   }
   FreeToken(tokens);
  }

  Free(tmp);
 }

 ret = 0;

 StrCpy(set->x86.VpnCMgrExeFileName, sizeof(set->x86.VpnCMgrExeFileName), (MsIsX64() ? "vpncmgr_x64.exe" : "vpncmgr.exe"));

 if (set->VpnInstallBuild != 0)
 {
  if (set->x86.Build != 0 && IsEmptyStr(set->x86.Path) == 0)
  {
   set->x86.Supported = 1;
   ret = 1;
  }
 }

 return ret;
}
