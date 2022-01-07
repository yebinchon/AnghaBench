
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_17__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_16__ {int CurrentVersion; int Name; int lock; int Option; } ;
struct TYPE_15__ {scalar_t__ NumItem; int HubName; } ;
struct TYPE_14__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ADMIN_OPTION ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*,int ) ;
 int CHECK_RIGHT ;
 int DataToHubOptionStruct (int ,TYPE_2__*) ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int ERR_TOO_MANT_ITEMS ;
 TYPE_3__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_3__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int Lock (int ) ;
 int LockHubList (int *) ;
 scalar_t__ MAX_HUB_ADMIN_OPTIONS ;
 int ReleaseHub (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SiHubUpdateProc (TYPE_3__*) ;
 int Unlock (int ) ;
 int UnlockHubList (int *) ;

UINT StSetHubExtOptions(ADMIN *a, RPC_ADMIN_OPTION *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;

 bool not_server_admin = 0;

 if (t->NumItem > MAX_HUB_ADMIN_OPTIONS)
 {
  return ERR_TOO_MANT_ITEMS;
 }

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }


 CHECK_RIGHT;

 if (a->ServerAdmin == 0)
 {
  not_server_admin = 1;
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

 if (GetHubAdminOption(h, "deny_hub_admin_change_ext_option") && not_server_admin)
 {

  ReleaseHub(h);

  return ERR_NOT_ENOUGH_RIGHT;
 }


 Lock(h->lock);
 {
  DataToHubOptionStruct(h->Option, t);
 }
 Unlock(h->lock);

 ALog(a, ((void*)0), "LA_SET_HUB_EXT_OPTION", h->Name);

 h->CurrentVersion++;
 SiHubUpdateProc(h);

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
