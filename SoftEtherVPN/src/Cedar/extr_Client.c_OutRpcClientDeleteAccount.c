
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_DELETE_ACCOUNT ;
typedef int PACK ;


 int PackAddUniStr (int *,char*,int ) ;

void OutRpcClientDeleteAccount(PACK *p, RPC_CLIENT_DELETE_ACCOUNT *a)
{

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddUniStr(p, "AccountName", a->AccountName);
}
