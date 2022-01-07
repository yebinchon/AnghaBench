
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int HubType; int HubOption; int Online; int AdminPasswordPlainText; int SecurePassword; int HashedPassword; int HubName; } ;
typedef TYPE_1__ RPC_CREATE_HUB ;
typedef int PACK ;


 int InRpcHubOption (int *,int *) ;
 int PackGetBool (int *,char*) ;
 int PackGetData2 (int *,char*,int ,int) ;
 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcCreateHub(RPC_CREATE_HUB *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_CREATE_HUB));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetData2(p, "HashedPassword", t->HashedPassword, sizeof(t->HashedPassword));
 PackGetData2(p, "SecurePassword", t->SecurePassword, sizeof(t->SecurePassword));
 PackGetStr(p, "AdminPasswordPlainText", t->AdminPasswordPlainText, sizeof(t->AdminPasswordPlainText));
 t->Online = PackGetBool(p, "Online");
 InRpcHubOption(&t->HubOption, p);
 t->HubType = PackGetInt(p, "HubType");
}
