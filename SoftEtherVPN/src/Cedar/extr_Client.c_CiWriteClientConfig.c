
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NicDownOnDisconnect; int NoChangeWcmNetworkSettingOnWindows8; int KeepConnectInterval; int AllowRemoteConfig; int KeepConnectProtocol; int KeepConnectPort; int KeepConnectHost; int UseKeepConnect; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT_CONFIG ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddStr (int *,char*,int ) ;

void CiWriteClientConfig(FOLDER *cc, CLIENT_CONFIG *config)
{

 if (cc == ((void*)0) || config == ((void*)0))
 {
  return;
 }

 CfgAddBool(cc, "UseKeepConnect", config->UseKeepConnect);
 CfgAddStr(cc, "KeepConnectHost", config->KeepConnectHost);
 CfgAddInt(cc, "KeepConnectPort", config->KeepConnectPort);
 CfgAddInt(cc, "KeepConnectProtocol", config->KeepConnectProtocol);
 CfgAddBool(cc, "AllowRemoteConfig", config->AllowRemoteConfig);
 CfgAddInt(cc, "KeepConnectInterval", config->KeepConnectInterval);
 CfgAddBool(cc, "NoChangeWcmNetworkSettingOnWindows8", config->NoChangeWcmNetworkSettingOnWindows8);
 CfgAddBool(cc, "NicDownOnDisconnect", config->NicDownOnDisconnect);
}
