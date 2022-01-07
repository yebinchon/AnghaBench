
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IsEnabled; int IsConnected; } ;
typedef TYPE_1__ RPC_AZURE_STATUS ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;

void OutRpcAzureStatus(PACK *p, RPC_AZURE_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "IsConnected", t->IsConnected);
 PackAddBool(p, "IsEnabled", t->IsEnabled);
}
