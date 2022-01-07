
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Online; int HubName; } ;
typedef TYPE_1__ RPC_SET_HUB_ONLINE ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcSetHubOnline(RPC_SET_HUB_ONLINE *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_SET_HUB_ONLINE));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->Online = PackGetBool(p, "Online");
}
