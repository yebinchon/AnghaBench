
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DynamicHub; int HubName; } ;
typedef TYPE_1__ RPC_FARM_HUB ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcFarmHub(PACK *p, RPC_FARM_HUB *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddBool(p, "DynamicHub", t->DynamicHub);
}
