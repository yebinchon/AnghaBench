
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int KeepConnectHost; int NicDownOnDisconnect; int AllowRemoteConfig; int KeepConnectInterval; int KeepConnectProtocol; int KeepConnectPort; int UseKeepConnect; } ;
typedef int PACK ;
typedef TYPE_1__ CLIENT_CONFIG ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcClientConfig(PACK *p, CLIENT_CONFIG *c)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "UseKeepConnect", c->UseKeepConnect);
 PackAddInt(p, "KeepConnectPort", c->KeepConnectPort);
 PackAddInt(p, "KeepConnectProtocol", c->KeepConnectProtocol);
 PackAddInt(p, "KeepConnectInterval", c->KeepConnectInterval);
 PackAddInt(p, "AllowRemoteConfig", c->AllowRemoteConfig);
 PackAddBool(p, "NicDownOnDisconnect", c->NicDownOnDisconnect);
 PackAddStr(p, "KeepConnectHost", c->KeepConnectHost);
}
