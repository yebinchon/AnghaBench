
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Cert; int HubName; } ;
typedef TYPE_1__ RPC_HUB_ADD_CA ;
typedef int PACK ;


 int PackAddStr (int *,char*,int ) ;
 int PackAddX (int *,char*,int ) ;

void OutRpcHubAddCa(PACK *p, RPC_HUB_ADD_CA *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddX(p, "Cert", t->Cert);
}
