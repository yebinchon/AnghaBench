
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {TYPE_1__* Server; } ;
struct TYPE_8__ {int RadiusRetryInterval; int RadiusSecret; int RadiusPort; int RadiusServerName; int HubName; } ;
struct TYPE_7__ {scalar_t__ ServerType; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_RADIUS ;
typedef int HUB ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int CHECK_RIGHT ;
 int ERR_HUB_NOT_FOUND ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int * GetHub (int *,int ) ;
 int GetRadiusServerEx (int *,int ,int,int *,int ,int,int *) ;
 int LockHubList (int *) ;
 int ReleaseHub (int *) ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int UnlockHubList (int *) ;
 int Zero (TYPE_2__*,int) ;

UINT StGetHubRadius(ADMIN *a, RPC_RADIUS *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 HUB *h = ((void*)0);

 CHECK_RIGHT;

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

 Zero(t, sizeof(RPC_RADIUS));


 GetRadiusServerEx(h, t->RadiusServerName, sizeof(t->RadiusServerName),
  &t->RadiusPort, t->RadiusSecret, sizeof(t->RadiusSecret), &t->RadiusRetryInterval);

 ReleaseHub(h);

 return ERR_NO_ERROR;
}
