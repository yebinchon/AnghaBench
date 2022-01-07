
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NewAccountName; int OldAccountName; int HubName; } ;
typedef TYPE_1__ RPC_RENAME_LINK ;
typedef int PACK ;


 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcRenameLink(RPC_RENAME_LINK *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_RENAME_LINK));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetUniStr(p, "OldAccountName", t->OldAccountName, sizeof(t->OldAccountName));
 PackGetUniStr(p, "NewAccountName", t->NewAccountName, sizeof(t->NewAccountName));
}
