
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NumFailed; int NumTry; int NumConnected; int FirstConnectedTime; int CurrentConnectedTime; int StartedTime; int LastError; int Online; int Port; int Ip; } ;
typedef TYPE_1__ RPC_FARM_CONNECTION_STATUS ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddIp32 (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;

void OutRpcFarmConnectionStatus(PACK *p, RPC_FARM_CONNECTION_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddIp32(p, "Ip", t->Ip);
 PackAddInt(p, "Port", t->Port);
 PackAddBool(p, "Online", t->Online);
 PackAddInt(p, "LastError", t->LastError);
 PackAddTime64(p, "StartedTime", t->StartedTime);
 PackAddTime64(p, "CurrentConnectedTime", t->CurrentConnectedTime);
 PackAddTime64(p, "FirstConnectedTime", t->FirstConnectedTime);
 PackAddInt(p, "NumConnected", t->NumConnected);
 PackAddInt(p, "NumTry", t->NumTry);
 PackAddInt(p, "NumFailed", t->NumFailed);
}
