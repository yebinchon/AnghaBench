
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Status; int AccountName; int HubName; } ;
typedef TYPE_1__ RPC_LINK_STATUS ;
typedef int PACK ;


 int InRpcClientGetConnectionStatus (int *,int *) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcLinkStatus(RPC_LINK_STATUS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_LINK_STATUS));
 PackGetStr(p, "HubName_Ex", t->HubName, sizeof(t->HubName));
 PackGetUniStr(p, "AccountName", t->AccountName, sizeof(t->AccountName));
 InRpcClientGetConnectionStatus(&t->Status, p);
}
