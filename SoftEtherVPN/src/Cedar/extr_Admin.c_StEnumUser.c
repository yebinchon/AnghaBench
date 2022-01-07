
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int hubname ;
struct TYPE_20__ {char* Name; char* GroupName; int lock; int ExpireTime; int Traffic; TYPE_1__* Policy; int NumLogin; int LastLoginTime; int AuthType; int Note; int RealName; } ;
typedef TYPE_3__ USER ;
typedef int UINT ;
struct TYPE_25__ {TYPE_4__* Server; } ;
struct TYPE_24__ {TYPE_2__* HubDb; } ;
struct TYPE_23__ {char* HubName; int NumUser; TYPE_5__* Users; } ;
struct TYPE_22__ {char* Name; char* GroupName; int DenyAccess; int IsTrafficFilled; int IsExpiresFilled; int Expires; int Traffic; int NumLogin; int LastLoginTime; int AuthType; int Note; int Realname; } ;
struct TYPE_21__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_19__ {int UserList; } ;
struct TYPE_18__ {scalar_t__ Access; } ;
typedef int TRAFFIC ;
typedef TYPE_4__ SERVER ;
typedef TYPE_5__ RPC_ENUM_USER_ITEM ;
typedef TYPE_6__ RPC_ENUM_USER ;
typedef TYPE_7__ HUB ;
typedef int CEDAR ;
typedef TYPE_8__ ADMIN ;


 int CHECK_RIGHT ;
 int Copy (int *,int ,int) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int FreeRpcEnumUser (TYPE_6__*) ;
 TYPE_7__* GetHub (int *,char*) ;
 int IncrementServerConfigRevision (TYPE_4__*) ;
 TYPE_3__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (TYPE_7__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int UnlockList (int ) ;
 int Zero (TYPE_6__*,int) ;
 TYPE_5__* ZeroMalloc (int) ;

UINT StEnumUser(ADMIN *a, RPC_ENUM_USER *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];
 UINT i, num;

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 LockHubList(c);
 {
  h = GetHub(c, t->HubName);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 FreeRpcEnumUser(t);

 StrCpy(hubname, sizeof(hubname), t->HubName);

 Zero(t, sizeof(RPC_ENUM_USER));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);

 LockList(h->HubDb->UserList);
 {
  num = LIST_NUM(h->HubDb->UserList);

  t->NumUser = num;
  t->Users = ZeroMalloc(sizeof(RPC_ENUM_USER_ITEM) * num);

  for (i = 0;i < num;i++)
  {
   USER *u = LIST_DATA(h->HubDb->UserList, i);

   Lock(u->lock);
   {
    RPC_ENUM_USER_ITEM *e = &t->Users[i];

    StrCpy(e->Name, sizeof(e->Name), u->Name);
    StrCpy(e->GroupName, sizeof(e->GroupName), u->GroupName);
    UniStrCpy(e->Realname, sizeof(e->Realname), u->RealName);
    UniStrCpy(e->Note, sizeof(e->Note), u->Note);
    e->AuthType = u->AuthType;
    e->LastLoginTime = u->LastLoginTime;
    e->NumLogin = u->NumLogin;

    if (u->Policy != ((void*)0))
    {
     e->DenyAccess = u->Policy->Access ? 0 : 1;
    }

    Copy(&e->Traffic, u->Traffic, sizeof(TRAFFIC));
    e->IsTrafficFilled = 1;

    e->Expires = u->ExpireTime;
    e->IsExpiresFilled = 1;
   }
   Unlock(u->lock);
  }
 }
 UnlockList(h->HubDb->UserList);

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
