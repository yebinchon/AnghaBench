
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumUser; TYPE_1__* Users; int HubName; } ;
struct TYPE_6__ {void* Expires; void* IsExpiresFilled; int Traffic; void* IsTrafficFilled; void* DenyAccess; void* NumLogin; void* LastLoginTime; void* AuthType; int Note; int Realname; int GroupName; int Name; } ;
typedef TYPE_1__ RPC_ENUM_USER_ITEM ;
typedef TYPE_2__ RPC_ENUM_USER ;
typedef int PACK ;


 int InRpcTrafficEx (int *,int *,size_t) ;
 void* PackGetBoolEx (int *,char*,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 void* PackGetInt64Ex (int *,char*,size_t) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int PackGetUniStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumUser(RPC_ENUM_USER *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_USER));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->NumUser = PackGetIndexCount(p, "Name");
 t->Users = ZeroMalloc(sizeof(RPC_ENUM_USER_ITEM) * t->NumUser);

 for (i = 0;i < t->NumUser;i++)
 {
  RPC_ENUM_USER_ITEM *e = &t->Users[i];

  PackGetStrEx(p, "Name", e->Name, sizeof(e->Name), i);
  PackGetStrEx(p, "GroupName", e->GroupName, sizeof(e->GroupName), i);
  PackGetUniStrEx(p, "Realname", e->Realname, sizeof(e->Realname), i);
  PackGetUniStrEx(p, "Note", e->Note, sizeof(e->Note), i);
  e->AuthType = PackGetIntEx(p, "AuthType", i);
  e->LastLoginTime = PackGetInt64Ex(p, "LastLoginTime", i);
  e->NumLogin = PackGetIntEx(p, "NumLogin", i);
  e->DenyAccess = PackGetBoolEx(p, "DenyAccess", i);

  e->IsTrafficFilled = PackGetBoolEx(p, "IsTrafficFilled", i);
  InRpcTrafficEx(&e->Traffic, p, i);

  e->IsExpiresFilled = PackGetBoolEx(p, "IsExpiresFilled", i);
  e->Expires = PackGetInt64Ex(p, "Expires", i);
 }
}
