
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int USERGROUP ;
typedef int UINT ;
struct TYPE_23__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_22__ {TYPE_1__* HubDb; } ;
struct TYPE_21__ {int Name; int Policy; int Note; int Realname; int HubName; } ;
struct TYPE_20__ {scalar_t__ ServerType; int * Cedar; } ;
struct TYPE_19__ {int GroupList; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_SET_GROUP ;
typedef TYPE_4__ HUB ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,TYPE_4__*,char*,int ) ;
 int AcAddGroup (TYPE_4__*,int *) ;
 scalar_t__ AcIsGroup (TYPE_4__*,int ) ;
 int AcLock (TYPE_4__*) ;
 int AcUnlock (TYPE_4__*) ;
 int CHECK_RIGHT ;
 int ERR_GROUP_ALREADY_EXISTS ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_FARM_CONTROLLER ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_TOO_MANY_GROUP ;
 TYPE_4__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_4__*,char*) ;
 scalar_t__ GetServerCapsInt (TYPE_2__*,char*) ;
 int IncrementServerConfigRevision (TYPE_2__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsSafeStr (int ) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockHubList (int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int * NewGroup (int ,int ,int ) ;
 int ReleaseGroup (int *) ;
 int ReleaseHub (TYPE_4__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SetGroupPolicy (int *,int ) ;
 int UnlockHubList (int *) ;

UINT StCreateGroup(ADMIN *a, RPC_SET_GROUP *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;

 if (IsEmptyStr(t->Name) || IsSafeStr(t->Name) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_FARM_CONTROLLER;
 }

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

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_groups") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 AcLock(h);
 {
  if (AcIsGroup(h, t->Name))
  {
   ret = ERR_GROUP_ALREADY_EXISTS;
  }
  else
  {
   USERGROUP *g = NewGroup(t->Name, t->Realname, t->Note);
   SetGroupPolicy(g, t->Policy);

   if ((LIST_NUM(h->HubDb->GroupList) >= GetServerCapsInt(a->Server, "i_max_users_per_hub")) ||
    ((GetHubAdminOption(h, "max_groups") != 0) && (LIST_NUM(h->HubDb->GroupList) >= GetHubAdminOption(h, "max_groups"))))
   {
    ret = ERR_TOO_MANY_GROUP;
   }
   else
   {
    AcAddGroup(h, g);
   }

   ReleaseGroup(g);

   ALog(a, h, "LA_CREATE_GROUP", t->Name);
  }
 }
 AcUnlock(h);

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ret;
}
