
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int NumPort; int ControllerOnly; void* Weight; int MemberPasswordPlaintext; int MemberPassword; void* ControllerPort; int ControllerName; int PublicIp; int * Ports; void* ServerType; } ;
typedef TYPE_1__ RPC_FARM ;
typedef int PACK ;


 int PackGetBool (int *,char*) ;
 int PackGetData2 (int *,char*,int ,int) ;
 int PackGetIndexCount (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetIp32 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 int * ZeroMalloc (int) ;

void InRpcFarm(RPC_FARM *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_FARM));
 t->ServerType = PackGetInt(p, "ServerType");
 t->NumPort = PackGetIndexCount(p, "Ports");
 t->Ports = ZeroMalloc(sizeof(UINT) * t->NumPort);
 for (i = 0;i < t->NumPort;i++)
 {
  t->Ports[i] = PackGetIntEx(p, "Ports", i);
 }
 t->PublicIp = PackGetIp32(p, "PublicIp");
 PackGetStr(p, "ControllerName", t->ControllerName, sizeof(t->ControllerName));
 t->ControllerPort = PackGetInt(p, "ControllerPort");
 PackGetData2(p, "MemberPassword", t->MemberPassword, sizeof(t->MemberPassword));
 PackGetStr(p, "MemberPasswordPlaintext", t->MemberPasswordPlaintext, sizeof(t->MemberPasswordPlaintext));
 t->Weight = PackGetInt(p, "Weight");
 t->ControllerOnly = PackGetBool(p, "ControllerOnly");
}
