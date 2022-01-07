
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Title; int ServicePack; int Build; int VerMinor; int VerMajor; int IsBeta; int IsServer; int IsNT; int IsWindows; } ;
typedef TYPE_1__ RPC_WINVER ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcWinVer(PACK *p, RPC_WINVER *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddBool(p, "V_IsWindows", t->IsWindows);
 PackAddBool(p, "V_IsNT", t->IsNT);
 PackAddBool(p, "V_IsServer", t->IsServer);
 PackAddBool(p, "V_IsBeta", t->IsBeta);
 PackAddInt(p, "V_VerMajor", t->VerMajor);
 PackAddInt(p, "V_VerMinor", t->VerMinor);
 PackAddInt(p, "V_Build", t->Build);
 PackAddInt(p, "V_ServicePack", t->ServicePack);
 PackAddStr(p, "V_Title", t->Title);
}
