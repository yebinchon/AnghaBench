
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int DeviceName; } ;
typedef TYPE_1__ RPC_CLIENT_CREATE_VLAN ;
typedef int MS_DRIVER_VER ;
typedef int KAKUSHI ;
typedef int CLIENT ;


 int CLog (int *,char*,int ) ;
 int CiInitDriverVerStruct (int *) ;
 int CiNotify (int *) ;
 int CiSendGlobalPulse (int *) ;
 int CiSetError (int *,int ) ;
 int CncExecDriverInstaller (char*) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_OBJECT_NOT_FOUND ;
 int ERR_VLAN_INSTALL_ERROR ;
 int Format (char*,int,char*,int ) ;
 int FreeKakushi (int *) ;
 int * InitKakushi () ;
 int MAX_SIZE ;
 int MsIsNt () ;
 int MsIsVLanExists (int ,int ) ;
 int MsIsVista () ;
 int MsUpgradeVLan (int ,int ,int ,int *) ;
 int VLAN_ADAPTER_NAME_TAG ;
 int VLAN_ADAPTER_NAME_TAG_OLD ;
 int VLAN_CONNECTION_NAME ;
 int VLAN_CONNECTION_NAME_OLD ;

bool CtUpgradeVLan(CLIENT *c, RPC_CLIENT_CREATE_VLAN *create)
{
 bool use_old_name = 0;







 if (c == ((void*)0) || create == ((void*)0))
 {
  return 0;
 }





 return 1;
}
