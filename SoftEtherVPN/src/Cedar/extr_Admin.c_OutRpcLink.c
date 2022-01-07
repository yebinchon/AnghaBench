
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AccountName; int HubName; } ;
typedef TYPE_1__ RPC_LINK ;
typedef int PACK ;


 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;

void OutRpcLink(PACK *p, RPC_LINK *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddUniStr(p, "AccountName", t->AccountName);
}
