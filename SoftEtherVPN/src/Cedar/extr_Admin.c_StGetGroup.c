
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int hubname ;
struct TYPE_12__ {char* Name; int lock; int Traffic; int Note; int RealName; } ;
typedef TYPE_1__ USERGROUP ;
typedef int UINT ;
struct TYPE_15__ {TYPE_2__* Server; } ;
struct TYPE_14__ {char* Name; char* HubName; int Policy; int Traffic; int Note; int Realname; } ;
struct TYPE_13__ {scalar_t__ ServerType; int * Cedar; } ;
typedef int TRAFFIC ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_SET_GROUP ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 TYPE_1__* AcGetGroup (int *,char*) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int CHECK_RIGHT ;
 int Copy (int *,int ,int) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int FreeRpcSetGroup (TYPE_3__*) ;
 int GetGroupPolicy (TYPE_1__*) ;
 int * GetHub (int *,char*) ;
 scalar_t__ IsEmptyStr (char*) ;
 int IsSafeStr (char*) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int MAX_HUBNAME_LEN ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseGroup (TYPE_1__*) ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int StrCpy (char*,int,char*) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;
 int Zero (TYPE_3__*,int) ;

UINT StGetGroup(ADMIN *a, RPC_SET_GROUP *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;
 char hubname[MAX_HUBNAME_LEN + 1];

 if (IsEmptyStr(t->Name) || IsSafeStr(t->Name) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }

 CHECK_RIGHT;
 NO_SUPPORT_FOR_BRIDGE;
 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);

 LockHubList(c);
 {
  h = GetHub(c, t->HubName);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 AcLock(h);
 {
  USERGROUP *g = AcGetGroup(h, t->Name);

  if (g == ((void*)0))
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
  else
  {
   FreeRpcSetGroup(t);
   Zero(t, sizeof(RPC_SET_GROUP));

   StrCpy(t->HubName, sizeof(t->HubName), hubname);

   Lock(g->lock);
   {
    StrCpy(t->Name, sizeof(t->Name), g->Name);
    UniStrCpy(t->Realname, sizeof(t->Realname), g->RealName);
    UniStrCpy(t->Note, sizeof(t->Note), g->Note);
    Copy(&t->Traffic, g->Traffic, sizeof(TRAFFIC));
   }
   Unlock(g->lock);

   t->Policy = GetGroupPolicy(g);

   ReleaseGroup(g);
  }
 }
 AcUnlock(h);

 ReleaseHub(h);

 return ret;
}
