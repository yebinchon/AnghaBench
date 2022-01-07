
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HubType; int HubOption; int AdminPasswordPlainText; int Online; int SecurePassword; int HashedPassword; int HubName; } ;
typedef TYPE_1__ RPC_CREATE_HUB ;
typedef int PACK ;


 int OutRpcHubOption (int *,int *) ;
 int PackAddBool (int *,char*,int ) ;
 int PackAddData (int *,char*,int ,int) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcCreateHub(PACK *p, RPC_CREATE_HUB *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddData(p, "HashedPassword", t->HashedPassword, sizeof(t->HashedPassword));
 PackAddData(p, "SecurePassword", t->SecurePassword, sizeof(t->SecurePassword));
 PackAddBool(p, "Online", t->Online);
 PackAddStr(p, "AdminPasswordPlainText", t->AdminPasswordPlainText);
 OutRpcHubOption(p, &t->HubOption);
 PackAddInt(p, "HubType", t->HubType);
}
