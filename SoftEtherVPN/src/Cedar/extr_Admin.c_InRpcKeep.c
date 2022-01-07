
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* KeepConnectInterval; void* KeepConnectProtocol; void* KeepConnectPort; int KeepConnectHost; int UseKeepConnect; } ;
typedef TYPE_1__ RPC_KEEP ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcKeep(RPC_KEEP *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_KEEP));
 t->UseKeepConnect = PackGetBool(p, "UseKeepConnect");
 PackGetStr(p, "KeepConnectHost", t->KeepConnectHost, sizeof(t->KeepConnectHost));
 t->KeepConnectPort = PackGetInt(p, "KeepConnectPort");
 t->KeepConnectProtocol = PackGetInt(p, "KeepConnectProtocol");
 t->KeepConnectInterval = PackGetInt(p, "KeepConnectInterval");
}
