
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NewName; int OldName; } ;
typedef TYPE_1__ RPC_RENAME_ACCOUNT ;
typedef int PACK ;


 int PackGetUniStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcRenameAccount(RPC_RENAME_ACCOUNT *a, PACK *p)
{

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(a, sizeof(RPC_RENAME_ACCOUNT));

 PackGetUniStr(p, "OldName", a->OldName, sizeof(a->OldName));
 PackGetUniStr(p, "NewName", a->NewName, sizeof(a->NewName));
}
