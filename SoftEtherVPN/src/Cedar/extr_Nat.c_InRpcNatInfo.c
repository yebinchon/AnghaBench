
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int MemInfo; int OsInfo; int NatHostName; void* NatBuildInt; void* NatVerInt; int NatBuildInfoString; int NatVersionString; int NatProductName; } ;
typedef TYPE_1__ RPC_NAT_INFO ;
typedef int PACK ;


 int InRpcMemInfo (int *,int *) ;
 int InRpcOsInfo (int *,int *) ;
 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcNatInfo(RPC_NAT_INFO *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_NAT_INFO));
 PackGetStr(p, "NatProductName", t->NatProductName, sizeof(t->NatProductName));
 PackGetStr(p, "NatVersionString", t->NatVersionString, sizeof(t->NatVersionString));
 PackGetStr(p, "NatBuildInfoString", t->NatBuildInfoString, sizeof(t->NatBuildInfoString));
 t->NatVerInt = PackGetInt(p, "NatVerInt");
 t->NatBuildInt = PackGetInt(p, "NatBuildInt");
 PackGetStr(p, "NatHostName", t->NatHostName, sizeof(t->NatHostName));
 InRpcOsInfo(&t->OsInfo, p);
 InRpcMemInfo(&t->MemInfo, p);
}
