
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MemInfo; int OsInfo; int NatHostName; int NatBuildInt; int NatVerInt; int NatBuildInfoString; int NatVersionString; int NatProductName; } ;
typedef TYPE_1__ RPC_NAT_INFO ;
typedef int PACK ;


 int OutRpcMemInfo (int *,int *) ;
 int OutRpcOsInfo (int *,int *) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcNatInfo(PACK *p, RPC_NAT_INFO *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "NatProductName", t->NatProductName);
 PackAddStr(p, "NatVersionString", t->NatVersionString);
 PackAddStr(p, "NatBuildInfoString", t->NatBuildInfoString);
 PackAddInt(p, "NatVerInt", t->NatVerInt);
 PackAddInt(p, "NatBuildInt", t->NatBuildInt);
 PackAddStr(p, "NatHostName", t->NatHostName);
 OutRpcOsInfo(p, &t->OsInfo);
 OutRpcMemInfo(p, &t->MemInfo);
}
