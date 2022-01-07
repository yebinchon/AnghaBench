
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {TYPE_1__* Cedar; } ;
struct TYPE_9__ {int MemInfo; int OsInfo; int NatHostName; int NatBuildInt; int NatVerInt; int NatBuildInfoString; int NatVersionString; int NatProductName; } ;
struct TYPE_8__ {int Build; int BuildInfo; int VerString; } ;
typedef TYPE_2__ RPC_NAT_INFO ;
typedef int OS_INFO ;
typedef TYPE_3__ NAT ;


 int CEDAR_ROUTER_STR ;
 int CopyOsInfo (int *,int *) ;
 int ERR_NO_ERROR ;
 int FreeRpcNatInfo (TYPE_2__*) ;
 int GetMachineName (int ,int) ;
 int GetMemInfo (int *) ;
 int * GetOsInfo () ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;

UINT NtGetInfo(NAT *n, RPC_NAT_INFO *t)
{
 OS_INFO *info;
 FreeRpcNatInfo(t);
 Zero(t, sizeof(RPC_NAT_INFO));

 StrCpy(t->NatProductName, sizeof(t->NatProductName), CEDAR_ROUTER_STR);
 StrCpy(t->NatVersionString, sizeof(t->NatVersionString), n->Cedar->VerString);
 StrCpy(t->NatBuildInfoString, sizeof(t->NatBuildInfoString), n->Cedar->BuildInfo);
 t->NatVerInt = n->Cedar->Build;
 t->NatBuildInt = n->Cedar->Build;

 GetMachineName(t->NatHostName, sizeof(t->NatHostName));

 info = GetOsInfo();

 CopyOsInfo(&t->OsInfo, info);

 GetMemInfo(&t->MemInfo);

 return ERR_NO_ERROR;
}
