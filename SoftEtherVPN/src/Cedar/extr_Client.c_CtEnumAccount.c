
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_17__ {int UpdateDateTime; int LastConnectDateTime; int CreateDateTime; TYPE_3__* ClientOption; TYPE_2__* ClientSession; int StartupAccount; TYPE_1__* ClientAuth; } ;
struct TYPE_16__ {int AccountList; } ;
struct TYPE_15__ {int NumItem; TYPE_4__** Items; } ;
struct TYPE_14__ {scalar_t__ ProxyType; int Active; int Connected; int UpdateDateTime; int LastConnectDateTime; int CreateDateTime; int HubName; int Port; int StartupAccount; int ProxyName; int DeviceName; int ServerName; int UserName; int AccountName; } ;
struct TYPE_13__ {scalar_t__ ProxyType; int HubName; int Port; int ProxyName; int DeviceName; int Hostname; int AccountName; } ;
struct TYPE_12__ {int ConnectSucceed; } ;
struct TYPE_11__ {int Username; } ;
typedef TYPE_4__ RPC_CLIENT_ENUM_ACCOUNT_ITEM ;
typedef TYPE_5__ RPC_CLIENT_ENUM_ACCOUNT ;
typedef TYPE_6__ CLIENT ;
typedef TYPE_7__ ACCOUNT ;


 TYPE_7__* LIST_DATA (int ,scalar_t__) ;
 int LIST_NUM (int ) ;
 int LockList (int ) ;
 scalar_t__ PROXY_DIRECT ;
 int StrCpy (int ,int,int ) ;
 int UniStrCpy (int ,int,int ) ;
 int UnlockList (int ) ;
 void* ZeroMalloc (int) ;

bool CtEnumAccount(CLIENT *c, RPC_CLIENT_ENUM_ACCOUNT *e)
{

 if (c == ((void*)0) || e == ((void*)0))
 {
  return 0;
 }

 LockList(c->AccountList);
 {
  UINT i;

  e->NumItem = LIST_NUM(c->AccountList);
  e->Items = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_ACCOUNT_ITEM *) * e->NumItem);

  for (i = 0;i < e->NumItem;i++)
  {
   ACCOUNT *a = LIST_DATA(c->AccountList, i);
   RPC_CLIENT_ENUM_ACCOUNT_ITEM *item = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_ACCOUNT_ITEM));
   e->Items[i] = item;


   UniStrCpy(item->AccountName, sizeof(item->AccountName), a->ClientOption->AccountName);


   StrCpy(item->UserName, sizeof(item->UserName), a->ClientAuth->Username);


   StrCpy(item->ServerName, sizeof(item->ServerName), a->ClientOption->Hostname);


   item->ProxyType = a->ClientOption->ProxyType;


   StrCpy(item->DeviceName, sizeof(item->DeviceName), a->ClientOption->DeviceName);


   if (item->ProxyType != PROXY_DIRECT)
   {
    StrCpy(item->ProxyName, sizeof(item->ProxyName), a->ClientOption->ProxyName);
   }


   item->StartupAccount = a->StartupAccount;


   item->Active = (a->ClientSession == ((void*)0) ? 0 : 1);


   item->Connected = (item->Active == 0) ? 0 : a->ClientSession->ConnectSucceed;


   item->Port = a->ClientOption->Port;


   StrCpy(item->HubName, sizeof(item->HubName), a->ClientOption->HubName);

   item->CreateDateTime = a->CreateDateTime;
   item->LastConnectDateTime = a->LastConnectDateTime;
   item->UpdateDateTime = a->UpdateDateTime;
  }
 }
 UnlockList(c->AccountList);

 return 1;
}
