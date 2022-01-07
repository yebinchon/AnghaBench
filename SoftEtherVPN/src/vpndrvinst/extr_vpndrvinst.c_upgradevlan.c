
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MS_DRIVER_VER ;
typedef int KAKUSHI ;


 int CiInitDriverVerStruct (int *) ;
 int FreeKakushi (int *) ;
 int FreeWinUi () ;
 int * InitKakushi () ;
 int InitWinUi (char*,int ,int ) ;
 scalar_t__ MsIsNt () ;
 int MsUpgradeVLan (int ,int ,char*,int *) ;
 int VLAN_ADAPTER_NAME_TAG ;
 int VLAN_CONNECTION_NAME ;
 int _II (char*) ;
 int _SS (char*) ;
 int _exit (int) ;

void upgradevlan(UINT num, char **arg)
{
 bool ok;
 KAKUSHI *k = ((void*)0);
 MS_DRIVER_VER ver;
 if (num < 1)
 {
  return;
 }

 InitWinUi(L"VPN", _SS("DEFAULT_FONT"), _II("DEFAULT_FONT_SIZE"));

 if (MsIsNt())
 {
  k = InitKakushi();
 }

 CiInitDriverVerStruct(&ver);

 ok = MsUpgradeVLan(VLAN_ADAPTER_NAME_TAG, VLAN_CONNECTION_NAME, arg[0], &ver);

 FreeKakushi(k);

 FreeWinUi();

 if (ok == 0)
 {
  _exit(1);
 }
 else
 {
  _exit(0);
 }
}
