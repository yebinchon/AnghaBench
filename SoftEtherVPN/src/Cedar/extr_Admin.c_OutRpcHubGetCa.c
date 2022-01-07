
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Cert; int Key; int HubName; } ;
typedef TYPE_1__ RPC_HUB_GET_CA ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddX (int *,char*,int ) ;

void OutRpcHubGetCa(PACK *p, RPC_HUB_GET_CA *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddInt(p, "Key", t->Key);
 PackAddX(p, "Cert", t->Cert);
}
