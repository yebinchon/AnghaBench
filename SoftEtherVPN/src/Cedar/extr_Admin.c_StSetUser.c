
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int USERGROUP ;
struct TYPE_18__ {int lock; int UpdatedTime; int ExpireTime; void* Note; void* RealName; } ;
typedef TYPE_2__ USER ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int ServerAdmin; TYPE_3__* Server; } ;
struct TYPE_21__ {TYPE_1__* UserX; } ;
struct TYPE_20__ {scalar_t__ AuthType; int Name; int Policy; int ExpireTime; TYPE_5__* AuthData; int Note; int Realname; int GroupName; int HubName; } ;
struct TYPE_19__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_17__ {int is_compatible_bit; } ;
typedef TYPE_3__ SERVER ;
typedef TYPE_4__ RPC_SET_USER ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_5__ AUTHUSERCERT ;
typedef TYPE_6__ ADMIN ;


 int ALog (TYPE_6__*,int *,char*,int ) ;
 scalar_t__ AUTHTYPE_NT ;
 scalar_t__ AUTHTYPE_RADIUS ;
 scalar_t__ AUTHTYPE_ROOTCERT ;
 scalar_t__ AUTHTYPE_USERCERT ;
 int * AcGetGroup (int *,int ) ;
 TYPE_2__* AcGetUser (int *,int ) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int CHECK_RIGHT ;
 int CopyAuthData (TYPE_5__*,scalar_t__) ;
 scalar_t__ ERR_GROUP_NOT_FOUND ;
 scalar_t__ ERR_HUB_NOT_FOUND ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NOT_RSA_1024 ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NOT_SUPPORTED_AUTH_ON_OPENSOURCE ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int Free (void*) ;
 int GSF_DISABLE_RADIUS_AUTH ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 int * GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (int *,char*) ;
 int IncrementServerConfigRevision (TYPE_3__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsUserName (int ) ;
 int JoinUserToGroup (TYPE_2__*,int *) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseGroup (int *) ;
 int ReleaseHub (int *) ;
 int ReleaseUser (TYPE_2__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SetUserAuthData (TYPE_2__*,scalar_t__,int ) ;
 int SetUserPolicy (TYPE_2__*,int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 scalar_t__ StrLen (int ) ;
 int SystemTime64 () ;
 void* UniCopyStr (int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;

UINT StSetUser(ADMIN *a, RPC_SET_USER *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;
 USER *u = ((void*)0);
 USERGROUP *g = ((void*)0);


 if (IsEmptyStr(t->Name) || IsUserName(t->Name) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }

 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 CHECK_RIGHT;

 if (GetGlobalServerFlag(GSF_DISABLE_RADIUS_AUTH) != 0)
 {
  if (t->AuthType == AUTHTYPE_USERCERT || t->AuthType == AUTHTYPE_RADIUS || t->AuthType == AUTHTYPE_ROOTCERT || t->AuthType == AUTHTYPE_NT)
  {
   return ERR_NOT_SUPPORTED_AUTH_ON_OPENSOURCE;
  }
 }

 if (StrCmpi(t->Name, "*") == 0)
 {
  if (t->AuthType != AUTHTYPE_RADIUS && t->AuthType != AUTHTYPE_NT)
  {
   return ERR_INVALID_PARAMETER;
  }
 }

 if (t->AuthType == AUTHTYPE_USERCERT)
 {
  AUTHUSERCERT *c = t->AuthData;
  if (c != ((void*)0) && c->UserX != ((void*)0) &&
   c->UserX->is_compatible_bit == 0)
  {
   return ERR_NOT_RSA_1024;
  }
  if (c == ((void*)0) || c->UserX == ((void*)0))
  {
   return ERR_INVALID_PARAMETER;
  }
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

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_users") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 AcLock(h);
 {
  u = AcGetUser(h, t->Name);
  if (u == ((void*)0))
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
  else
  {
   Lock(u->lock);
   {
    if (StrLen(t->GroupName) != 0)
    {
     g = AcGetGroup(h, t->GroupName);

     if (g != ((void*)0))
     {
      JoinUserToGroup(u, g);
      ReleaseGroup(g);
     }
     else
     {
      ret = ERR_GROUP_NOT_FOUND;
     }
    }
    else
    {
     JoinUserToGroup(u, ((void*)0));
    }

    if (ret != ERR_GROUP_NOT_FOUND)
    {
     Free(u->RealName);
     Free(u->Note);
     u->RealName = UniCopyStr(t->Realname);
     u->Note = UniCopyStr(t->Note);
     SetUserAuthData(u, t->AuthType, CopyAuthData(t->AuthData, t->AuthType));
     u->ExpireTime = t->ExpireTime;
     u->UpdatedTime = SystemTime64();

     SetUserPolicy(u, t->Policy);
    }
   }
   Unlock(u->lock);

   IncrementServerConfigRevision(s);

   ReleaseUser(u);
  }
 }
 AcUnlock(h);

 if (ret == ERR_NO_ERROR)
 {
  ALog(a, h, "LA_SET_USER", t->Name);
 }

 ReleaseHub(h);

 return ret;
}
