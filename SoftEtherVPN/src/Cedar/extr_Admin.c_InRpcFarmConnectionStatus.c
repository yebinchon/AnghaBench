
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* NumFailed; void* NumTry; void* NumConnected; void* FirstConnectedTime; void* CurrentConnectedTime; void* StartedTime; void* LastError; int Online; void* Port; int Ip; } ;
typedef TYPE_1__ RPC_FARM_CONNECTION_STATUS ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 void* PackGetInt64 (int *,char*) ;
 int PackGetIp32 (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcFarmConnectionStatus(RPC_FARM_CONNECTION_STATUS *t, PACK *p)
{
 Zero(t, sizeof(RPC_FARM_CONNECTION_STATUS));

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 t->Ip = PackGetIp32(p, "Ip");
 t->Port = PackGetInt(p, "Port");
 t->Online = PackGetBool(p, "Online");
 t->LastError = PackGetInt(p, "LastError");
 t->StartedTime = PackGetInt64(p, "StartedTime");
 t->CurrentConnectedTime = PackGetInt64(p, "CurrentConnectedTime");
 t->FirstConnectedTime = PackGetInt64(p, "FirstConnectedTime");
 t->NumConnected = PackGetInt(p, "NumConnected");
 t->NumTry = PackGetInt(p, "NumTry");
 t->NumFailed = PackGetInt(p, "NumFailed");
}
