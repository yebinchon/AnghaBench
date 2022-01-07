
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DynamicHub; int HubName; } ;
typedef TYPE_1__ RPC_FARM_HUB ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcFarmHub(RPC_FARM_HUB *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_FARM_HUB));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->DynamicHub = PackGetBool(p, "DynamicHub");
}
