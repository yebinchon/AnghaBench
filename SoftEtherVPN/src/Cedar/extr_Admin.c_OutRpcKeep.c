
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int KeepConnectInterval; int KeepConnectProtocol; int KeepConnectPort; int KeepConnectHost; int UseKeepConnect; } ;
typedef TYPE_1__ RPC_KEEP ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcKeep(PACK *p, RPC_KEEP *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "UseKeepConnect", t->UseKeepConnect);
 PackAddStr(p, "KeepConnectHost", t->KeepConnectHost);
 PackAddInt(p, "KeepConnectPort", t->KeepConnectPort);
 PackAddInt(p, "KeepConnectProtocol", t->KeepConnectProtocol);
 PackAddInt(p, "KeepConnectInterval", t->KeepConnectInterval);
}
