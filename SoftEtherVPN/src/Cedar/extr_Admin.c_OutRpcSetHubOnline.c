
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Online; int HubName; } ;
typedef TYPE_1__ RPC_SET_HUB_ONLINE ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcSetHubOnline(PACK *p, RPC_SET_HUB_ONLINE *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddBool(p, "Online", t->Online);
}
