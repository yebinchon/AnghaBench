
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__** Items; } ;
struct TYPE_4__ {int LastConnectDateTime; int UpdateDateTime; int CreateDateTime; int HubName; int Port; int Connected; int StartupAccount; int Active; int ProxyType; int DeviceName; int ProxyName; int ServerName; int UserName; int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_ACCOUNT_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_ACCOUNT ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddNum (int *,char*,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddUniStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcClientEnumAccount(PACK *p, RPC_CLIENT_ENUM_ACCOUNT *e)
{
 UINT i;

 if (e == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddNum(p, "NumItem", e->NumItem);

 PackSetCurrentJsonGroupName(p, "AccountList");
 for (i = 0;i < e->NumItem;i++)
 {
  RPC_CLIENT_ENUM_ACCOUNT_ITEM *item = e->Items[i];

  PackAddUniStrEx(p, "AccountName", item->AccountName, i, e->NumItem);
  PackAddStrEx(p, "UserName", item->UserName, i, e->NumItem);
  PackAddStrEx(p, "ServerName", item->ServerName, i, e->NumItem);
  PackAddStrEx(p, "ProxyName", item->ProxyName, i, e->NumItem);
  PackAddStrEx(p, "DeviceName", item->DeviceName, i, e->NumItem);
  PackAddIntEx(p, "ProxyType", item->ProxyType, i, e->NumItem);
  PackAddIntEx(p, "Active", item->Active, i, e->NumItem);
  PackAddIntEx(p, "StartupAccount", item->StartupAccount, i, e->NumItem);
  PackAddBoolEx(p, "Connected", item->Connected, i, e->NumItem);
  PackAddIntEx(p, "Port", item->Port, i, e->NumItem);
  PackAddStrEx(p, "HubName", item->HubName, i, e->NumItem);
  PackAddTime64Ex(p, "CreateDateTime", item->CreateDateTime, i, e->NumItem);
  PackAddTime64Ex(p, "UpdateDateTime", item->UpdateDateTime, i, e->NumItem);
  PackAddTime64Ex(p, "LastConnectDateTime", item->LastConnectDateTime, i, e->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
