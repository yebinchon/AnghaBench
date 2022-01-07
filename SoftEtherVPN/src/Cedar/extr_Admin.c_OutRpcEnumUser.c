
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumUser; TYPE_1__* Users; int HubName; } ;
struct TYPE_4__ {int Expires; int IsExpiresFilled; int Traffic; int IsTrafficFilled; int DenyAccess; int NumLogin; int LastLoginTime; int AuthType; int Note; int Realname; int GroupName; int Name; } ;
typedef TYPE_1__ RPC_ENUM_USER_ITEM ;
typedef TYPE_2__ RPC_ENUM_USER ;
typedef int PACK ;


 int OutRpcTrafficEx (int *,int *,size_t,size_t) ;
 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddUniStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumUser(PACK *p, RPC_ENUM_USER *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }
 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "UserList");
 for (i = 0;i < t->NumUser;i++)
 {
  RPC_ENUM_USER_ITEM *e = &t->Users[i];

  PackAddStrEx(p, "Name", e->Name, i, t->NumUser);
  PackAddStrEx(p, "GroupName", e->GroupName, i, t->NumUser);
  PackAddUniStrEx(p, "Realname", e->Realname, i, t->NumUser);
  PackAddUniStrEx(p, "Note", e->Note, i, t->NumUser);
  PackAddIntEx(p, "AuthType", e->AuthType, i, t->NumUser);
  PackAddTime64Ex(p, "LastLoginTime", e->LastLoginTime, i, t->NumUser);
  PackAddIntEx(p, "NumLogin", e->NumLogin, i, t->NumUser);
  PackAddBoolEx(p, "DenyAccess", e->DenyAccess, i, t->NumUser);

  PackAddBoolEx(p, "IsTrafficFilled", e->IsTrafficFilled, i, t->NumUser);
  OutRpcTrafficEx(&e->Traffic, p, i, t->NumUser);

  PackAddBoolEx(p, "IsExpiresFilled", e->IsExpiresFilled, i, t->NumUser);
  PackAddTime64Ex(p, "Expires", e->Expires, i, t->NumUser);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
