
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* NicDownOnDisconnect; void* NoChangeWcmNetworkSettingOnWindows8; int KeepConnectInterval; void* AllowRemoteConfig; void* KeepConnectProtocol; void* KeepConnectPort; int KeepConnectHost; void* UseKeepConnect; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT_CONFIG ;


 void* CfgGetBool (int *,char*) ;
 void* CfgGetInt (int *,char*) ;
 int CfgGetStr (int *,char*,int ,int) ;
 int KEEP_INTERVAL_MAX ;
 int KEEP_INTERVAL_MIN ;
 int MAKESURE (void*,int ,int ) ;

void CiLoadClientConfig(CLIENT_CONFIG *c, FOLDER *f)
{

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 c->UseKeepConnect = CfgGetBool(f, "UseKeepConnect");
 CfgGetStr(f, "KeepConnectHost", c->KeepConnectHost, sizeof(c->KeepConnectHost));
 c->KeepConnectPort = CfgGetInt(f, "KeepConnectPort");
 c->KeepConnectProtocol = CfgGetInt(f, "KeepConnectProtocol");
 c->AllowRemoteConfig = CfgGetBool(f, "AllowRemoteConfig");
 c->KeepConnectInterval = MAKESURE(CfgGetInt(f, "KeepConnectInterval"), KEEP_INTERVAL_MIN, KEEP_INTERVAL_MAX);
 c->NoChangeWcmNetworkSettingOnWindows8 = CfgGetBool(f, "NoChangeWcmNetworkSettingOnWindows8");
 c->NicDownOnDisconnect = CfgGetBool(f, "NicDownOnDisconnect");
}
