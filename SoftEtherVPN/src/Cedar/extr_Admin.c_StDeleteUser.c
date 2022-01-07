
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_9__ {int Name; int HubName; } ;
struct TYPE_8__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_DELETE_USER ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*,int ) ;
 int AcDeleteUser (int *,int ) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_OBJECT_NOT_FOUND ;
 int * GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (int *,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsUserName (int ) ;
 int LockHubList (int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int UnlockHubList (int *) ;

UINT StDeleteUser(ADMIN *a, RPC_DELETE_USER *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);
 UINT ret = ERR_NO_ERROR;


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

 ALog(a, h, "LA_DELETE_USER", t->Name);

 AcLock(h);
 {
  if (AcDeleteUser(h, t->Name) == 0)
  {
   ret = ERR_OBJECT_NOT_FOUND;
  }
 }
 AcUnlock(h);

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ret;
}
