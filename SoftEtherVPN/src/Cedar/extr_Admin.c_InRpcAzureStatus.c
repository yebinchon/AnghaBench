
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* IsEnabled; void* IsConnected; } ;
typedef TYPE_1__ RPC_AZURE_STATUS ;
typedef int PACK ;


 void* PackGetBool (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcAzureStatus(RPC_AZURE_STATUS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_AZURE_STATUS));

 t->IsConnected = PackGetBool(p, "IsConnected");
 t->IsEnabled = PackGetBool(p, "IsEnabled");
}
