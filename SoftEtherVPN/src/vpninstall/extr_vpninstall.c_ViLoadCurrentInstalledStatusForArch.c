
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_3__ {int Supported; int CurrentInstalled; int CurrentInstalledPathW; scalar_t__ CurrentInstalledBuild; } ;
typedef TYPE_1__ VI_SETTING_ARCH ;
typedef scalar_t__ UINT ;


 int Format (char*,int,char*,int ,char*) ;
 int Free (int *) ;
 int MAX_SIZE ;
 scalar_t__ MsRegReadIntEx2 (int ,char*,char*,int,int) ;
 int * MsRegReadStrEx2W (int ,char*,char*,int,int) ;
 int REG_LOCAL_MACHINE ;
 int SW_REG_KEY ;
 scalar_t__ UniIsEmptyStr (int *) ;
 int UniStrCpy (int ,int,int *) ;

void ViLoadCurrentInstalledStatusForArch(VI_SETTING_ARCH *a)
{
 char tmp[MAX_SIZE];
 UINT build;
 wchar_t *dir;

 if (a == ((void*)0))
 {
  return;
 }
 if (a->Supported == 0)
 {

  return;
 }


 Format(tmp, sizeof(tmp), "%s\\%s", SW_REG_KEY, "vpnclient");

 build = MsRegReadIntEx2(REG_LOCAL_MACHINE, tmp, "InstalledBuild", 0, 1);

 dir = MsRegReadStrEx2W(REG_LOCAL_MACHINE, tmp, "InstalledDir", 0, 1);

 if (build == 0 || UniIsEmptyStr(dir))
 {

  a->CurrentInstalled = 0;
 }
 else
 {

  a->CurrentInstalled = 1;
  a->CurrentInstalledBuild = build;

  UniStrCpy(a->CurrentInstalledPathW, sizeof(a->CurrentInstalledPathW), dir);
 }

 Free(dir);
}
