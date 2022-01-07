
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int name ;
typedef int hubname ;
typedef int USERGROUP ;
struct TYPE_11__ {char* GroupName; int lock; int * Policy; int Traffic; int NumLogin; int AuthData; int AuthType; int ExpireTime; int UpdatedTime; int CreatedTime; int Note; int RealName; } ;
typedef TYPE_1__ USER ;
typedef int UINT ;
struct TYPE_14__ {TYPE_2__* Server; } ;
struct TYPE_13__ {char* Name; char* HubName; char* GroupName; int Policy; int Traffic; int NumLogin; int AuthType; int AuthData; int ExpireTime; int UpdatedTime; int CreatedTime; int Note; int Realname; } ;
struct TYPE_12__ {scalar_t__ ServerType; int * Cedar; } ;
typedef int TRAFFIC ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_SET_USER ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 TYPE_1__* AcGetUser (int *,char*) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int CHECK_RIGHT ;
 int ClonePolicy (int *) ;
 int Copy (int *,int ,int) ;
 int CopyAuthData (int ,int ) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int FreeRpcSetUser (TYPE_3__*) ;
 int * GetHub (int *,char*) ;
 scalar_t__ IsEmptyStr (char*) ;
 int IsUserName (char*) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int MAX_HUBNAME_LEN ;
 int MAX_USERNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (int *) ;
 int ReleaseUser (TYPE_1__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int Zero (TYPE_3__*,int) ;

UINT StGetUser(ADMIN *a, RPC_SET_USER *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;
 USER *u = ((void*)0);
 USERGROUP *g = ((void*)0);
 char name[MAX_USERNAME_LEN + 1];
 char hubname[MAX_HUBNAME_LEN + 1];
 StrCpy(name, sizeof(name), t->Name);
 StrCpy(hubname, sizeof(hubname), t->HubName);

 if (IsEmptyStr(t->Name) || IsUserName(t->Name) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 FreeRpcSetUser(t);
 Zero(t, sizeof(RPC_SET_USER));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);
 StrCpy(t->Name, sizeof(t->Name), name);

 LockHubList(c);
 {
  h = GetHub(c, hubname);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 AcLock(h);
 {
  u = AcGetUser(h, name);
  if (u == ((void*)0))
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
  else
  {
   Lock(u->lock);
   {
    StrCpy(t->GroupName, sizeof(t->GroupName), u->GroupName);
    UniStrCpy(t->Realname, sizeof(t->Realname), u->RealName);
    UniStrCpy(t->Note, sizeof(t->Note), u->Note);
    t->CreatedTime = u->CreatedTime;
    t->UpdatedTime = u->UpdatedTime;
    t->ExpireTime = u->ExpireTime;

    t->AuthType = u->AuthType;
    t->AuthData = CopyAuthData(u->AuthData, t->AuthType);
    t->NumLogin = u->NumLogin;
    Copy(&t->Traffic, u->Traffic, sizeof(TRAFFIC));
    if (u->Policy != ((void*)0))
    {
     t->Policy = ClonePolicy(u->Policy);
    }
   }
   Unlock(u->lock);

   ReleaseUser(u);
  }
 }
 AcUnlock(h);

 ReleaseHub(h);

 return ret;
}
