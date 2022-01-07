
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {TYPE_1__* Server; } ;
struct TYPE_7__ {int LogSetting; int HubName; } ;
struct TYPE_6__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_HUB_LOG ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int * GetHub (int *,int ) ;
 int GetHubLogSetting (int *,int *) ;
 int LockHubList (int *) ;
 int ReleaseHub (int *) ;
 int UnlockHubList (int *) ;

UINT StGetHubLog(ADMIN *a, RPC_HUB_LOG *t)
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

 GetHubLogSetting(h, &t->LogSetting);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
