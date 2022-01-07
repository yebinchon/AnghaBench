
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int UseKeepConnect; int AllowRemoteConfig; int KeepConnectHost; int NicDownOnDisconnect; scalar_t__ KeepConnectInterval; scalar_t__ KeepConnectProtocol; scalar_t__ KeepConnectPort; } ;
typedef int PACK ;
typedef TYPE_1__ CLIENT_CONFIG ;


 int PackGetBool (int *,char*) ;
 scalar_t__ PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientConfig(CLIENT_CONFIG *c, PACK *p)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(CLIENT_CONFIG));
 c->UseKeepConnect = PackGetInt(p, "UseKeepConnect") == 0 ? 0 : 1;
 c->KeepConnectPort = PackGetInt(p, "KeepConnectPort");
 c->KeepConnectProtocol = PackGetInt(p, "KeepConnectProtocol");
 c->KeepConnectInterval = PackGetInt(p, "KeepConnectInterval");
 c->AllowRemoteConfig = PackGetInt(p, "AllowRemoteConfig") == 0 ? 0 : 1;
 c->NicDownOnDisconnect = PackGetBool(p, "NicDownOnDisconnect");
 PackGetStr(p, "KeepConnectHost", c->KeepConnectHost, sizeof(c->KeepConnectHost));
}
