
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Title; void* ServicePack; void* Build; void* VerMinor; void* VerMajor; void* IsBeta; void* IsServer; void* IsNT; void* IsWindows; } ;
typedef TYPE_1__ RPC_WINVER ;
typedef int PACK ;


 void* PackGetBool (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcWinVer(RPC_WINVER *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_WINVER));

 t->IsWindows = PackGetBool(p, "V_IsWindows");
 t->IsNT = PackGetBool(p, "V_IsNT");
 t->IsServer = PackGetBool(p, "V_IsServer");
 t->IsBeta = PackGetBool(p, "V_IsBeta");
 t->VerMajor = PackGetInt(p, "V_VerMajor");
 t->VerMinor = PackGetInt(p, "V_VerMinor");
 t->Build = PackGetInt(p, "V_Build");
 t->ServicePack = PackGetInt(p, "V_ServicePack");
 PackGetStr(p, "V_Title", t->Title, sizeof(t->Title));
}
