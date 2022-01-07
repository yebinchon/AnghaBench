
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NewAccountName; int OldAccountName; int HubName; } ;
typedef TYPE_1__ RPC_RENAME_LINK ;
typedef int PACK ;


 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;

void OutRpcRenameLink(PACK *p, RPC_RENAME_LINK *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddUniStr(p, "OldAccountName", t->OldAccountName);
 PackAddUniStr(p, "NewAccountName", t->NewAccountName);
}
