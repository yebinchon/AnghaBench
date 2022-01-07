
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status; int AccountName; int HubName; } ;
typedef TYPE_1__ RPC_LINK_STATUS ;
typedef int PACK ;


 int OutRpcClientGetConnectionStatus (int *,int *) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;

void OutRpcLinkStatus(PACK *p, RPC_LINK_STATUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName_Ex", t->HubName);
 PackAddUniStr(p, "AccountName", t->AccountName);
 OutRpcClientGetConnectionStatus(p, &t->Status);
}
