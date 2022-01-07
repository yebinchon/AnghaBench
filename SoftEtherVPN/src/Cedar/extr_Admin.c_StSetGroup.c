
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int lock; void* Note; void* RealName; } ;
typedef TYPE_1__ USERGROUP ;
typedef int UINT ;
struct TYPE_15__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_14__ {int Name; int Policy; int Note; int Realname; int HubName; } ;
struct TYPE_13__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_SET_GROUP ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*,int ) ;
 TYPE_1__* AcGetGroup (int *,int ) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int Free (void*) ;
 int * GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (int *,char*) ;
 int IncrementServerConfigRevision (TYPE_2__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsSafeStr (int ) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseGroup (TYPE_1__*) ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SetGroupPolicy (TYPE_1__*,int ) ;
 void* UniCopyStr (int ) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;

UINT StSetGroup(ADMIN *a, RPC_SET_GROUP *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;

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
  USERGROUP *g = AcGetGroup(h, t->Name);
  if (g == ((void*)0))
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
  else
  {
   Lock(g->lock);
   {
    Free(g->RealName);
    Free(g->Note);
    g->RealName = UniCopyStr(t->Realname);
    g->Note = UniCopyStr(t->Note);
   }
   Unlock(g->lock);

   SetGroupPolicy(g, t->Policy);

   ReleaseGroup(g);

   ALog(a, h, "LA_SET_GROUP", t->Name);
  }
 }
 AcUnlock(h);

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ret;
}
