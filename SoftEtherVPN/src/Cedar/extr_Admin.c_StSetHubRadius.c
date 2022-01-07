
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {TYPE_1__* Server; } ;
struct TYPE_9__ {int RadiusRetryInterval; int RadiusSecret; int RadiusPort; int RadiusServerName; int HubName; } ;
struct TYPE_8__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_RADIUS ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*) ;
 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE ;
 int ERR_NO_ERROR ;
 int GSF_DISABLE_RADIUS_AUTH ;
 scalar_t__ GetGlobalServerFlag (int ) ;
 int * GetHub (int *,int ) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int IsEmptyStr (int ) ;
 int LockHubList (int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int SetRadiusServerEx (int *,int ,int ,int ,int ) ;
 int UnlockHubList (int *) ;

UINT StSetHubRadius(ADMIN *a, RPC_RADIUS *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);

 NO_SUPPORT_FOR_BRIDGE;

 if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
 {
  return ERR_NOT_SUPPORTED;
 }

 if (GetGlobalServerFlag(GSF_DISABLE_RADIUS_AUTH) != 0 && IsEmptyStr(t->RadiusServerName) == 0)
 {
  return ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE;
 }

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


 SetRadiusServerEx(h, t->RadiusServerName, t->RadiusPort, t->RadiusSecret, t->RadiusRetryInterval);

 ALog(a, h, "LA_SET_HUB_RADIUS");

 ReleaseHub(h);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
