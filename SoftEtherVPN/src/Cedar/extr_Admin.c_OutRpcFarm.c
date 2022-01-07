
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t NumPort; int ControllerOnly; int Weight; int MemberPasswordPlaintext; int MemberPassword; int ControllerPort; int ControllerName; int PublicIp; int * Ports; int ServerType; } ;
typedef TYPE_1__ RPC_FARM ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddData (int *,char*,int ,int) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcFarm(PACK *p, RPC_FARM *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "ServerType", t->ServerType);
 for (i = 0;i < t->NumPort;i++)
 {
  PackAddIntEx(p, "Ports", t->Ports[i], i, t->NumPort);
 }
 PackAddIp32(p, "PublicIp", t->PublicIp);
 PackAddStr(p, "ControllerName", t->ControllerName);
 PackAddInt(p, "ControllerPort", t->ControllerPort);
 PackAddData(p, "MemberPassword", t->MemberPassword, sizeof(t->MemberPassword));
 PackAddStr(p, "MemberPasswordPlaintext", t->MemberPasswordPlaintext);
 PackAddInt(p, "Weight", t->Weight);
 PackAddBool(p, "ControllerOnly", t->ControllerOnly);
}
