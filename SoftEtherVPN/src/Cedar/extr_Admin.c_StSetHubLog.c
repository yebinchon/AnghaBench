
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_18__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_17__ {int CurrentVersion; } ;
struct TYPE_16__ {int LogSetting; int HubName; } ;
struct TYPE_15__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_HUB_LOG ;
typedef TYPE_3__ HUB ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,TYPE_3__*,char*) ;
 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_ENOUGH_RIGHT ;
 int ERR_NO_ERROR ;
 TYPE_3__* GetHub (int *,int ) ;
 scalar_t__ GetHubAdminOption (TYPE_3__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int LockHubList (int *) ;
 int ReleaseHub (TYPE_3__*) ;
 int SetHubLogSettingEx (TYPE_3__*,int *,int) ;
 int SiHubUpdateProc (TYPE_3__*) ;
 int UnlockHubList (int *) ;

UINT StSetHubLog(ADMIN *a, RPC_HUB_LOG *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h;

 CHECK_RIGHT;


 LockHubList(c);
 {
  h = GetHub(c, t->HubName);
 }
 UnlockHubList(c);

 if (h == ((void*)0))
 {
  return ERR_HUB_NOT_FOUND;
 }

 if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_log_config") != 0)
 {
  ReleaseHub(h);
  return ERR_NOT_ENOUGH_RIGHT;
 }

 ALog(a, h, "LA_SET_HUB_LOG");

 SetHubLogSettingEx(h, &t->LogSetting,
  (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_change_log_switch_type") != 0));

 h->CurrentVersion++;
 SiHubUpdateProc(h);

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
