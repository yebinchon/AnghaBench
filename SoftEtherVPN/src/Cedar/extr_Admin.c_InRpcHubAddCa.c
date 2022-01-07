
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Cert; int HubName; } ;
typedef TYPE_1__ RPC_HUB_ADD_CA ;
typedef int PACK ;


 int PackGetStr (int *,char*,int ,int) ;
 int PackGetX (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcHubAddCa(RPC_HUB_ADD_CA *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_HUB_ADD_CA));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->Cert = PackGetX(p, "Cert");
}
